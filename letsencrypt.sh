#!/bin/bash
echo  "
$(tput setab [1])
$(tput setaf 23)              ()     //                                                   
              ))    ((                                                    
             //      \                                                    
            | \____// |                                                   
           \~/ ~    ~\/~~/                                                
            (|    _/  ~~                                                  
             /  /     ,|                                                  
            (~~~)__.-\ |                                                  
             ~~ |    | |                                                  
                |    | |  _   _   _____   _____   _____   _____   _____   
$(tput setaf 23)                |  \ | | | | | | |_   _| |  _  \ | ____| | ____| |  _  \  
$(tput setaf 24)                |   \| | | | | |   | |   | | | | | |__   | |__   | |_| |  
$(tput setaf 25)                | |\   | | | | |   | |   | | | | |  __|  |  __|  |  _  /  
$(tput setaf 26)                | | \  | | |_| |   | |   | |_| | | |___  | |___  | | \ \  
$(tput setaf 27)                |_|  \_| \_____/   |_|   |_____/ |_____| |_____| |_|  \_\ 
                                                                          
$(tput sgr0) "
echo "Bienvenue sur le script Let's Encrypt de Nutdeer"
sleep 2s

if (( $EUID != 0 )); then 
   echo "Ce script doit être exécuté avec les droits root." 
   exit 1 
fi

echo "Entrer ici votre nom de domaine à sécuriser :"

read nomdedomaine

echo "Mise à jour des paquets : "
sleep 1s
apt update -y
apt upgrade -y

echo "Téléchargement de Let's Encrypt via Github :"

git clone https://github.com/letsencrypt/letsencrypt /opt/letsencrypt
cd /opt/letsencrypt 

echo "Application du Script de Let's Encrypt :"
sleep 2s
./letsencrypt-auto --apache -d $nomdedomaine

sleep 2s

echo "MERCI D'AVOIR CHOISI CE SCRIPT ! Et bonne continuation !"
echo  "
$(tput setab [1])
$(tput setaf 23)              ()     //                                                   
              ))    ((                                                    
             //      \                                                    
            | \____// |                                                   
           \~/ ~    ~\/~~/                                                
            (|    _/  ~~                                                  
             /  /     ,|                                                  
            (~~~)__.-\ |                                                  
             ~~ |    | |                                                  
                |    | |"

echo "Vous pouver vous rendre sur votre site $nomdedomaine. Il est sécurisé !"
sleep 3s






