#! /bin/sh
# This mirror for Nethunter 3.0
# echo "deb http://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib" > /etc/apt/sources.list
apt update
apt install -y pppoe tshark 
touch /etc/ppp/pppoe-server-options
echo -e "require-pap\nlcp-echo-interval 10\nlcp-echo-failure 2" > /etc/ppp/pppoe-server-options
echo "* * * *" > /etc/ppp/pap-secrets
