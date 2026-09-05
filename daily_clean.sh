#!/bin/bash
echo "--- Maintenance started at $(date) ---"

# Update
sudo apt update && sudo apt upgrade -y

# Logs
sudo journalctl --vacuum-time=2d

# Deep clean
sudo apt autoremove --purge -y
sudo apt clean

# Disk info
echo "Disk space after cleaning:"
df -h | grep '^/dev/'

echo "Maintenance finished! ✨"