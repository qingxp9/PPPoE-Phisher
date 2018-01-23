#!/bin/sh
/usr/sbin/pppoe-server -L 10.5.5.1 -R 10.5.5.10 -I eth0 -S yyf
tshark -i eth0 -Y "pap.password" -l -T fields -e pap.peer_id -e pap.password | tee -a pap.log
