#!/bin/bash
# Met a jour les paquets
sudo apt-get update
# Installe Apache2
sudo apt-get install -y apache2
# Demarre Apache2 et l'active au demarrage
sudo systemctl start apache2
sudo systemctl enable apache2

mv /var/www/html/index.html /var/www/html/index.html.old
wget https://raw.githubusercontent.com/Boucanier/test-azure/main/test.html -O /var/www/html/index.html
