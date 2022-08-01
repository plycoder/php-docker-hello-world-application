#!/bin/bash
# Add server name
echo "add servername apache2 conf file"
echo "ServerName localhost" >> /etc/apache2/apache2.conf

echo "start ssh"
# start ssh
sed -i "s/SSH_PORT/$SSH_PORT/g" /etc/ssh/sshd_config
service ssh start


echo "touch create phperrors file"

sleep 1
touch  /home/phperrors

echo "start apache"
/usr/sbin/apache2ctl -D FOREGROUND

echo "end start script"
