#!/bin/bash
caminho=$(find . -name "repositorio-ec2-pi")
usuario=$(whoami)

echo "atualizando os pacotes"
sudo apt update && sudo apt upgrade
 
echo "instalando a GUI"
sudo apt-get install xrdp lxde-core lxde tigervnc-standalone-server -y

echo "clonando repositorio"
git clone https://github.com/Victor-Afonso/docker.git
