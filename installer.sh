#!/bin/sh

## Installing Cloudpanel
echo "Installing Cloudpanel ..."
apt update && apt -y upgrade && apt -y install curl wget sudo
echo "Installed Dependencies ..."
curl -sSL https://installer.cloudpanel.io/ce/v2/install.sh | sudo bash
echo "Installed Cloudpanel ..."

## Installing Docker
echo "Installing Docker ..."
apt install  ca-certificates  curl   gnupg  lsb-release -y
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
echo "\n"
apt-get update -y
apt-get install docker-ce docker-ce-cli containerd.io -y
echo "Installed Docker ..."

## Installing docker-compose
echo "Installing docker-compose ..."
apt-get install docker-compose-plugin
echo "Installed docker-compose ..."

## Installing Portainer
echo "Installing Portainer ..."
docker volume create portainer_data
docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ee:latest
echo "\n"

## Installing Gitea
echo "Installing Gitea ..."
git clone https://github.com/BRAVO68WEB/gitea-installer
cd gitea-installer
bash ./gitea-installer-en.sh
echo "Installed Gitea ..."

## Configure Git 
echo "Configuring Git ..."
read -p "Enter your git username: " git_username
read -p "Enter your git email: " git_email
git config --global user.name "$git_username"
git config --global user.email "$git_email"

## Insatll basic npm packages
echo "Insatll basic npm packages ..."
yarn global add nodemon

## Install snapcraft
echo "Install snapcraft ..."
apt install snapd -y

## Install Bpytop
echo "Install Bpytop ..."
snap install bpytop
