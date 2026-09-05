# VPS Optimizer 🚀
[🇺🇸 English version](README.md)

### 1. Настройка и оптимизация (Один раз)
Скачать, дать права и запустить:
```bash
mkdir -p ~/vps-optimizer && cd ~/vps-optimizer && curl -O https://raw.githubusercontent.com/Vancore/vps-optimizer/main/setup.sh && chmod +x setup.sh && ./setup.sh
```
### 2. Ежедневное обслуживание
Скачать и дать права:
```bash
mkdir -p ~/vps-optimizer && cd ~/vps-optimizer && curl -O https://raw.githubusercontent.com/Vancore/vps-optimizer/main/daily_clean.sh && chmod +x daily_clean.sh
```
### 3. Автоматизация (Cron):
Добавь в crontab -e (запуск в 03:00):
```bash
0 3 * * * /bin/bash ~/vps-optimizer/daily_clean.sh >> ~/vps-optimizer/clean.log 2>&1
```
---
*Сделал для себя и для тех, кому нужно быстро оптимизировать сервер, не тратя время на рутину. Надеюсь, это сэкономит вам немного сил!*