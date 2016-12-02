#!/bin/bash

sudo dnf update
echo

echo "Mise à jour terminée."
sleep 1

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
