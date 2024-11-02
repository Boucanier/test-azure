#!/bin/bash
# Met à jour les paquets
sudo apt-get update
# Installe Apache2
sudo apt-get install -y apache2
# Démarre Apache2 et l'active au démarrage
sudo systemctl start apache2
sudo systemctl enable apache2
