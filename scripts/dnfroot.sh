#!/bin/bash

#activation des copr necessaires
sudo dnf copr enable heikoada/terminix 

#installation des paquets
sudo dnf install -y gnome-tweak-tool libreoffice-langpack-fr seahorse-nautilus thunderbird keepass yumex-dnf terminix paper-icon-theme paper-gtk-theme spotify-client transmission-gtk transmission-common redshift

#owncloud-client
sudo dnf config-manager --add-repo http://download.opensuse.org/repositories/isv:ownCloud:desktop/Fedora_24/isv:ownCloud:desktop.repo
sudo dnf install -y owncloud-client

echo -n "Voulez-vous rebootez maintenant [y/n]: "; read bool
if [ "$bool" = "y" ]; then
  cd ..
  ./launcher.sh
elif [ "$bool" = "n" ]; then
echo Merci, à bientôt
sleep 2s
  exit
else
  echo ""
  echo "Le nombre entré n'est pas reconnu."
  echo "Essaye encore. --Andy"
fi
