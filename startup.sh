#!/bin/sh

echo "Installing Debian 10 over current OS"
sudo apt install curl -y
curl -fLO https://raw.githubusercontent.com/bohanyang/debi/master/debi.sh && chmod a+rx debi.sh

read -p "Enter your password: " password
sudo ./debi.sh --version 10 --user root --password "$password"
echo "Ready to restart"
sudo shutdown -r now
