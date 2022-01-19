#!/bin/sh

echo "Installing Debian 10 oven current OS"
sudo apt install curl -y
curl -fLO https://raw.githubusercontent.com/bohanyang/debi/master/debi.sh && chmod a+rx debi.sh
sudo ./debi.sh --version 10 --user root --password "N8@bJggX%fdsJG"
echo "Ready to restart"
sudo shutdown -r now