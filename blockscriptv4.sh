#!/bin/sh
for i in `cat ipblock.list`; do
iptables -A FORWARD -s $i -j DROP
iptables -A OUTPUT -s $i -j DROP
iptables -A INPUT -s $i -j DROP
done
printf "${PLAIN}"
exit 0
