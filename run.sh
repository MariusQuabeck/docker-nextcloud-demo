#!/bin/bash
sudo apt install curl
clear
echo ""
echo "Willkommen zur Comline AG Docker & Nextcloud Demo"
echo ""
sleep 5
echo ">curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -"
echo ""
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo ">sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable""
echo ""
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
echo ""
echo "Docker Repository wurde hinzugefügt"
echo ""
sleep 5
echo ">sudo apt update"
echo ""
sudo apt update
echo ""
echo "Paketquellen wurden aktualisisert"
echo ""
sleep 2
echo ""
echo "Ist die Paketquelle korrekt?"
echo ""
sleep 5
echo ">apt-cache policy docker-ce"
echo ""
apt-cache policy docker-ce
echo ""
echo "Jetzt wird Docker installiert"
echo ""
sleep 5
echo ">sudo apt-get install -y docker-ce"
echo ""
sudo apt-get install -y docker-ce
echo ""
echo "Docker wurde installiert"
echo ""
sleep 5
echo ""
echo "Ist Docker als Systemdienst aktiv?"
echo ""
sleep 4
echo ">sudo systemctl status docker"
echo ""
sudo systemctl status docker
echo ""
echo "Docker ist installiert und läuft"
echo ""
sleep 5
echo "weiter mit der Nextcloud Installation"
echo""
echo ">sudo docker run -d -p 8080:80 nextcloud"
echo ""
sudo docker run -d -p 8080:80 nextcloud
echo ""
echo "Docker & Nextcloud wurde installiert"
echo "Nextcloud wird im Browser geöffnet"
sleep 2
echo ""
echo ">xdg-open http://localhost:8080/"
echo ""
xdg-open http://localhost:8080/
