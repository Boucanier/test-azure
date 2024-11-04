#!/bin/bash
# Met a jour les paquets
sudo apt-get update

sudo apt-get install -y nodejs npm

mkdir /home/azureadmin/website

wget https://raw.githubusercontent.com/Boucanier/test-azure/main/website/app.js -O /home/azureadmin/website/app.js
wget https://raw.githubusercontent.com/Boucanier/test-azure/main/website/package.json -O /home/azureadmin/website/package.json

cd /home/azureadmin/website

npm install

npm start

exit 0