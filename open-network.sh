#!/bin/sh

iptables-save > ~/iptables-rules
iptables -P INPUT ACCEPT
iptables -P OUTPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -F

iptables --flush

sudo netfilter-persistent save

echo "iptables rules applied -> ports are open"
echo "changes made persistent over reboot"
