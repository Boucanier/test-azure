#!/bin/bash
# Met � jour les paquets
sudo apt-get update
# Installe Apache2
sudo apt-get install -y apache2
# D�marre Apache2 et l'active au d�marrage
sudo systemctl start apache2
sudo systemctl enable apache2
