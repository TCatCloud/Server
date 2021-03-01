#!/bin/bash
echo '正在停止后端'
systemctl stop TCat
echo '正在删除后端'
rm -rf /root/TCat
echo '正在下载后端'
wget -P /root/TCat -T 15 -t 30 -c -nv https://raw.githubusercontent.com/TCatCloud/Server/master/TCat
wget -P /root/TCat -T 15 -t 30 -c -nv https://raw.githubusercontent.com/TCatCloud/Server/master/TCat.zip
unzip /root/TCat/TCat.zip -d /root/TCat > /dev/null
chmod +x /root/TCat/*
echo '正在启动后端'
systemctl start TCat