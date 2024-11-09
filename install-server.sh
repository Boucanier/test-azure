#!/bin/bash
# Met a jour les paquets
sudo apt-get update

sudo apt-get install -y nodejs npm

mkdir /home/azureadmin/website
mkdir /home/azureadmin/website/views
mkdir /home/azureadmin/website/public
mkdir /home/azureadmin/website/public/images
mkdir /home/azureadmin/website/public/styles

wget https://raw.githubusercontent.com/Boucanier/test-azure/main/website/app.mjs -O /home/azureadmin/website/app.mjs
wget https://raw.githubusercontent.com/Boucanier/test-azure/main/website/public/images/UQAC_logo.png -O /home/azureadmin/website/public/images/UQAC_logo.png
wget https://raw.githubusercontent.com/Boucanier/test-azure/main/website/public/styles/style.css -O /home/azureadmin/website/public/styles/style.css
wget https://raw.githubusercontent.com/Boucanier/test-azure/main/website/views/index.ejs -O /home/azureadmin/website/views/index.ejs
wget https://raw.githubusercontent.com/Boucanier/test-azure/main/website/package.json -O /home/azureadmin/website/package.json

cd /home/azureadmin/website

sudo npm install

sudo npm start &

# sudo echo "[Unit]
# Description=Mon serveur Node.js
# After=network.target

# [Service]
# ExecStart=cd /home/azureadmin/website && sudo /usr/bin/npm start
# Restart=always
# User=azureadmin
# Environment=PORT=80

# [Install]
# WantedBy=multi-user.target
# " > /etc/systemd/system/nodeapp.service

# sudo systemctl daemon-reload
# sudo systemctl enable node-app
# sudo systemctl start nodeapp

exit 0