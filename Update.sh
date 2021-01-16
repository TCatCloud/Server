#!/bin/bash
echo '正在停止后端'
systemctl stop TCat
echo '正在删除后端'
rm -rf /root/TCat
echo '正在下载后端'
while true;do wget -P /root/TCat -T 15 -c -q https://cdn.jsdelivr.net/gh/TCatCloud/Server/TCat && break;done
while true;do wget -P /root/TCat -T 15 -c -q https://cdn.jsdelivr.net/gh/TCatCloud/Server/TCat.zip && break;done
unzip /root/TCat/TCat.zip -d /root/TCat > /dev/null
chmod +x /root/TCat/*
echo '正在启动后端'
systemctl start TCat