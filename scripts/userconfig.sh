#!/bin/bash

echo -n "Entrez-votre nom d'user ici : " read user


#copie des modeles
cp -r /home/$user/synology/backup/fedora/modeles/* /home/andy/Modèles/
mkdir /home/$user/Templates
cp -r /home/$user/synology/backup/fedora/templates/* /home/andy/Templates/
 
#configuration des extensions gnome
mkdir /home/$user/.local/share/gnome-shell/extensions
mkdir /home/$user/.local/share/gnome-shell/extensions
cp -r /home/$user/extensions/* /home/$user/.local/share/gnome-shell/extensions/

#copie des infos thunderbird
mkdir /home/$user/.thunderbird
cp -r /home/$user/synology/backup/fedora/thunderbird/* /home/andy/.thunderbird
