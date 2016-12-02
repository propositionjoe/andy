#!/bin/bash
clear
echo "
███▄    █  █    ██ ▄▄▄█████▓▓█████▄ ▓█████ ▓█████  ██▀███  
 ██ ▀█   █  ██  ▓██▒▓  ██▒ ▓▒▒██▀ ██▌▓█   ▀ ▓█   ▀ ▓██ ▒ ██▒
▓██  ▀█ ██▒▓██  ▒██░▒ ▓██░ ▒░░██   █▌▒███   ▒███   ▓██ ░▄█ ▒
▓██▒  ▐▌██▒▓▓█  ░██░░ ▓██▓ ░ ░▓█▄   ▌▒▓█  ▄ ▒▓█  ▄ ▒██▀▀█▄  
▒██░   ▓██░▒▒█████▓   ▒██▒ ░ ░▒████▓ ░▒████▒░▒████▒░██▓ ▒██▒
░ ▒░   ▒ ▒ ░▒▓▒ ▒ ▒   ▒ ░░    ▒▒▓  ▒ ░░ ▒░ ░░░ ▒░ ░░ ▒▓ ░▒▓░
░ ░░   ░ ▒░░░▒░ ░ ░     ░     ░ ▒  ▒  ░ ░  ░ ░ ░  ░  ░▒ ░ ▒░
   ░   ░ ░  ░░░ ░ ░   ░       ░ ░  ░    ░      ░     ░░   ░ 
         ░    ░                 ░       ░  ░   ░  ░   ░     
                              ░                           "
echo ""
echo "  [1]  Script d'installation en root"
echo "  [2]  Installation des préférences utilisateur"
echo "  [3]  Montage du NFS sur /etc/fstab"
echo "  [4]  Script d'installation du certificat Let's Encrypt"
echo "  [5]  Dnf Update"
echo "  [6]  Script d'installation de Jeedom"
echo "  [7]  Installation de Fedy"
#echo ""

echo "  ========================================="

echo "  [0] Quit"
echo ""

echo -n "Enter number: "; read script
if [ "$script" = "1" ]; then
  . ./scripts/dnfroot.sh
elif [ "$script" = "2" ]; then
  . ./scripts/userconfig.sh
elif [ "$script" = "3" ]; then
  . ./scripts/nfs.sh
elif [ "$script" = "4" ]; then
  . ./scripts/letsencrypt.sh
#elif [ "$script" = "5" ]; then
#  . ./scripts/dnfupdate.sh
#elif [ "$script" = "6" ]; then
 # . ./scripts/jeedom.sh
#elif [ "$script" = "7" ]; then
#  . ./scripts/fedy.sh
#elif [ "$script" = "8" ]; then
#  . ./devices/nexus7/nexus7.sh
#elif [ "$script" = "9" ]; then
#  . ./devices/nexus7deb/nexus7.sh
#elif [ "$script" = "10" ]; then
#  . ./devices/nexus10/nexus10.sh
#elif [ "$script" = "11" ]; then
#  . ./devices/oneplusone/oneplusone.sh
#elif [ "$script" = "12" ]; then
#  . ./devices/generic/telegram.sh
#elif [ "$script" = "13" ]; then
#  . ./devices/generic/reportabug.sh
#elif [ "$script" = "0" ]; then
echo Merci, à bientôt
sleep 2s
  exit
else
  echo ""
  echo "Le nombre entré n'est pas reconnu."
  echo "--Andy"
fi
