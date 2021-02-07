#!/bin/sh
for i in `cat ip6block.list`; do
ip6tables -A FORWARD -s $i -j DROP
ip6tables -A OUTPUT -s $i -j DROP
ip6tables -A INPUT -s $i -j DROP
done
printf "${PLAIN}"
exit 0
