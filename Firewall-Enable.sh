#!/bin/bash

# Exécuter les commandes nécessitant des privilèges élevés avec pkexec et le mot de passe entré par l'utilisateur
pkexec bash -c "ufw default deny incoming; ufw default deny outgoing; ufw allow out 21/tcp; ufw allow out 53; ufw allow out 80/tcp; ufw allow out 443/tcp; ufw allow out 465/tcp; ufw allow out pop3s/tcp; ufw allow out 993/tcp"

notify-send "UFW ENABLE" 
exit 0
