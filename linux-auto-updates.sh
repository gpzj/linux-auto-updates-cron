#!/bin/bash
sudo apt install -y cron    
sudo systemctl enable --now cron
sudo sh -c "echo \
'
0 1 * * * root /usr/bin/apt update -q -y >> /var/log/apt/automaticupdates.log
0 2 * * * root /usr/bin/apt upgrade -q -y >> /var/log/apt/automaticupdates.log
' >> /etc/crontab"
