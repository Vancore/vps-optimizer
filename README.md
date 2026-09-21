# VPS Optimizer 🚀
[Russian version](README.RU.md)

### 1. Initial Setup (Run once)
Download, set permissions, and run:
```bash
mkdir -p ~/vps-optimizer && cd ~/vps-optimizer && curl -O https://raw.githubusercontent.com/Vancore/vps-optimizer/main/setup.sh && chmod +x setup.sh && ./setup.sh
```
### 2. Daily Maintenance
Download and set permissions:
```bash
mkdir -p ~/vps-optimizer && cd ~/vps-optimizer && curl -O https://raw.githubusercontent.com/Vancore/vps-optimizer/main/daily_clean.sh && chmod +x daily_clean.sh
```
### 3. Automation (Cron)
Add to crontab -e (runs at 03:00 AM):
```bash
0 3 * * * /bin/bash ~/vps-optimizer/daily_clean.sh >> ~/vps-optimizer/clean.log 2>&1
```
---
*Made this for myself and for anyone who needs to optimize a server quickly without wasting time on repetitive tasks. Hope it saves you some effort!*
