#!/bin/bash

sudo apt update
sudo sed -i "/#\$nrconf{restart} = 'i';/s/.*/\$nrconf{restart} = 'a';/" /etc/needrestart/needrestart.conf
sudo apt-get install r-base -y
sudo apt-get install gdebi-core -y
wget https://download2.rstudio.org/server/jammy/amd64/rstudio-server-2023.12.0-369-amd64.deb
yes | sudo gdebi rstudio-server-2023.12.0-369-amd64.deb
echo 'ubuntu:HashTek@123' | sudo chpasswd