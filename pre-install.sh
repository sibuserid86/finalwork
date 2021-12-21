#!/bin/bash
set -x
sudo apt-get update -y
sudo apt-get install -y ansible git
ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub
git config --global user.name "Sibuser86"
git config --global user.email "sibuserid@yandex.ru"
git clone https://github.com/sibuserid86/finalwork.git
cd finalwork
source run.sh
