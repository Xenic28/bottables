#!/bin/sh
for i in `cat blockscriptv4`; do
iptables -A FORWARD -s $i -j DROP
iptables -A OUTPUT -s $i -j DROP
iptables -A INPUT -s $i -j DROP
done
echo "BOTTables successfully Activated / Updated (IPv4)"
printf "${PLAIN}"
exit 0
