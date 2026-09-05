#!/bin/bash
set -e

export DEBIAN_FRONTEND=noninteractive

echo "Starting system optimization..."

# Update
sudo apt update && sudo apt upgrade -y

# Bloatware
echo "Removing Snapd..."
sudo apt purge snapd -y || echo "Snapd already removed"
sudo apt autoremove -y

# Performance
echo "Installing ZRAM and Preload..."
sudo apt install preload zram-config -y

# Network (BBR)
echo "Optimizing network..."
sudo sed -i '/net.core.default_qdisc=fq/d' /etc/sysctl.conf
sudo sed -i '/net.ipv4.tcp_congestion_control=bbr/d' /etc/sysctl.conf
echo "net.core.default_qdisc=fq" | sudo tee -a /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" | sudo tee -a /etc/sysctl.conf
sudo sysctl -p

# SSH
echo "Optimizing SSH..."
sudo sed -i 's/#UseDNS yes/UseDNS no/' /etc/ssh/sshd_config
sudo sed -i 's/UseDNS yes/UseDNS no/' /etc/ssh/sshd_config
sudo sshd -t && sudo systemctl restart ssh

sudo systemctl daemon-reexec
echo "Optimization completed! 🚀"