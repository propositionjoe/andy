#!/bin/bash

echo "Entrez votre nom de domaine : " ; read nom_de_domaine
echo "Entrez éventuellement un autre domaine : " ; read nom_de_domaine2

echo "Clonage du git de Let's Encrypt..."
sudo git clone https://github.com/letsencrypt/letsencrypt /opt/letsencrypt
clear

echo "Application du certificat..."
sudo ./opt/letsencrypt/letsencrypt-auto --apache -d $nom_de_domaine $nom_de_domaine2
clear
echo "Certificat ajouté pour le(s) domaine(s) $nom_de_domaine $nom_de_domaine2 "
sleep 1
echo ""
echo "
Attention, pour veiller à ce que votre certificat soit à jour, veuillez ajouter une tâche de renouvellement :"
echo ""
echo "Ajouter la ligne suivante à votre crontab en root : 30 2 * * 1 /opt/letsencrypt/letsencrypt-auto renew >> /var/log/le-renew.log"
sleep 1
echo "Ceci effectuera une mise à jour tous les lundis à 2/30 am"
sleep 2
echo -n "Voulez-vous rebooter ? [y/n] : " ; read bool1

if [ "$bool1" = "y" ]; then
  reboot
elif [ "$bool1" = "n" ]; then
clear
echo Retour au menu...
sleep 2s
./launcher.sh
else
  echo ""
  echo "L'entrée n'est pas reconnu."
  echo "-- Andy"
fi


