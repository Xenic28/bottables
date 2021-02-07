#!/bin/sh
for i in `cat ipblock.list`; do
iptables -D FORWARD -s $i -j DROP
iptables -D OUTPUT -s $i -j DROP
iptables -D INPUT -s $i -j DROP
done
printf "${PLAIN}"
exit 0
