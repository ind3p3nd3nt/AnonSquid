#!/bin/bash
if [ -f /usr/bin/apt ]; then apt update && apt install wget squid -y; else yum install wget squid -y; fi;
wget -O /etc/squid/squid.conf https://is.gd/highsquid;
systemctl enable squid;
systemctl restart squid;
echo "Proxy $(hostname -I) Port 443 activated.";
