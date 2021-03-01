#!/bin/bash
systemctl stop TCat
rm -rf /root/TCat
wget -P /root/TCat -T 15 -t 30 -c -q https://raw.githubusercontent.com/TCatCloud/Server/master/TCat
wget -P /root/TCat -T 15 -t 30 -c -q https://raw.githubusercontent.com/TCatCloud/Server/master/TCat.zip
unzip /root/TCat/TCat.zip -d /root/TCat > /dev/null
chmod +x /root/TCat/*
systemctl start TCat
sleep 5
systemctl status TCat