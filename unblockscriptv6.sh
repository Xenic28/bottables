#!/bin/sh
for i in `cat ip6block.list`; do
ip6tables -D FORWARD -s $i -j DROP
ip6tables -D OUTPUT -s $i -j DROP
ip6tables -D INPUT -s $i -j DROP
done
printf "${PLAIN}"
exit 0
