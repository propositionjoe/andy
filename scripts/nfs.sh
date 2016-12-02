#!/bin/bash

echo -n "Entrer ici votre nom d'utilisateur: "; read user
echo -n "Entrez ici l'adresse IP de votre serveur NFS : " ; read IP
echo -n "Combien de dossier maitre NFS souhaitez vous monter (1 max pour le moment) ? : " ; read nb_folder
clear
echo "Attention, il est important que les dossiers montés aient le même nom que les dossier partagé de votre server NFS."
clear 
sleep 1
echo "Attention, il est important que les dossiers montés aient le même nom que les dossier partagé de votre server NFS."
clear sleep 1
echo "Attention, il est important que les dossiers montés aient le même nom que les dossier partagé de votre server NFS."
sleep 2

if [ "$nb_folder" = "1" ] ; then
	echo -n "Entrez ici votre nom de dossier maitre de votre NFS (ex: synology ou OMV) : " ; read folder0
	echo -n "Entrez ici le nombre de sous-dossier (max 6) : "; read nb_subfolder
fi

mkdir /home/$user/$folder0

if [ "$nb_subfolder" = "1" ] ; then
	echo -n "Entrez ici le nom de votre sous-dossier 1 : " ; read folder1
	mkdir /home/$user/$folder0/$folder1
	echo "#MONTAGE NFS SYNOLOGY
	$IP/volume1/$folder1/ /home/$user/$folder0/$folder1 nfs defaults,user,auto,rw,noatime,rsize=16384,wsize=16384 0 0" | sudo tee -a /etc/fstab


elif [ "$nb_subfolder" = "2" ] ; then
	echo -n "Entrez ici le nom de votre sous-dossier 1 : " ; read folder1
	echo -n "Entrez ici le nom de votre sous-dossier 2 : " ; read folder2
	mkdir /home/$user/$folder0/$folder1
	mkdir /home/$user/$folder0/$folder2
	echo "#MONTAGE NFS SYNOLOGY
	$IP/volume1/$folder1/ /home/$user/$folder0/$folder1 nfs defaults,user,auto,rw,noatime,rsize=16384,wsize=16384 0 0
	$IP/volume1/$folder2/ /home/$user/$folder0/$folder2 nfs defaults,user,auto,rw,noatime,rsize=16384,wsize=16384 0 0" | sudo tee -a /etc/fstab


elif [ "$nb_subfolder" = "3" ] ; then
	echo -n "Entrez ici le nom de votre sous-dossier 1 : " ; read folder1
	echo -n "Entrez ici le nom de votre sous-dossier 2 : " ; read folder2
	echo -n "Entrez ici le nom de votre sous-dossier 3 : " : read folder3
	mkdir /home/$user/$folder0/$folder1
	mkdir /home/$user/$folder0/$folder2
	mkdir /home/$user/$folder0/$folder3
	echo "#MONTAGE NFS SYNOLOGY
	$IP/volume1/$folder1/ /home/$user/$folder0/$folder1 nfs defaults,user,auto,rw,noatime,rsize=16384,wsize=16384 0 0
	$IP/volume1/$folder2/ /home/$user/$folder0/$folder2 nfs defaults,user,auto,rw,noatime,rsize=16384,wsize=16384 0 0
	$IP/volume1/$folder3/ /home/$user/$folder0/$folder3 nfs defaults,user,auto,rw,noatime,rsize=16384,wsize=16384 0 0" | sudo tee -a /etc/fstab

elif [ "$nb_subfolder" = "4" ] ; then
	echo -n"Entrez ici le nom de votre sous-dossier 1 : " ; read folder1
	echo -n "Entrez ici le nom de votre sous-dossier 2 : " ; read folder2
	echo -n "Entrez ici le nom de votre sous-dossier 3 : " ; read folder3
	echo -n "Entrez ici le nom de votre sous-dossier 4 : " ; read folder4
	mkdir /home/$user/$folder0/$folder1
	mkdir /home/$user/$folder0/$folder2
	mkdir /home/$user/$folder0/$folder3
	mkdir /home/$user/$folder0/$folder4
	echo "#MONTAGE NFS SYNOLOGY
	$IP/volume1/$folder1/ /home/$user/$folder0/$folder1 nfs defaults,user,auto,rw,noatime,rsize=16384,wsize=16384 0 0
	$IP/volume1/$folder2/ /home/$user/$folder0/$folder2 nfs defaults,user,auto,rw,noatime,rsize=16384,wsize=16384 0 0
	$IP/volume1/$folder3/ /home/$user/$folder0/$folder3 nfs defaults,user,auto,rw,noatime,rsize=16384,wsize=16384 0 0
	$IP/volume1/$folder4/ /home/$user/$folder0/$folder4 nfs defaults,user,auto,rw,noatime,rsize=16384,wsize=16384 0 0" | sudo tee -a /etc/fstab


elif [ "$nb_subfolder" = "5" ] ; then
	echo -n "Entrez ici le nom de votre sous-dossier 1 : " ; read folder1
	echo -n "Entrez ici le nom de votre sous-dossier 2 : " ; read folder2
	echo -n "Entrez ici le nom de votre sous-dossier 3 : " ; read folder3
	echo -n "Entrez ici le nom de votre sous-dossier 4 : " ; read folder4
	echo -n "Entrez ici le nom de votre sous-dossier 5 : " ; read folder5
	mkdir /home/$user/$folder0/$folder1
	mkdir /home/$user/$folder0/$folder2
	mkdir /home/$user/$folder0/$folder3
	mkdir /home/$user/$folder0/$folder4
	mkdir /home/$user/$folder0/$folder5
	echo "#MONTAGE NFS SYNOLOGY
	$IP/volume1/$folder1/ /home/$user/$folder0/$folder1 nfs defaults,user,auto,rw,noatime,rsize=16384,wsize=16384 0 0
	$IP/volume1/$folder2/ /home/$user/$folder0/$folder2 nfs defaults,user,auto,rw,noatime,rsize=16384,wsize=16384 0 0
	$IP/volume1/$folder3/ /home/$user/$folder0/$folder3 nfs defaults,user,auto,rw,noatime,rsize=16384,wsize=16384 0 0
	$IP/volume1/$folder4/ /home/$user/$folder0/$folder4 nfs defaults,user,auto,rw,noatime,rsize=16384,wsize=16384 0 0
	$IP/volume1/$folder5/ /home/$user/$folder0/$folder5 nfs defaults,user,auto,rw,noatime,rsize=16384,wsize=16384 0 0" | sudo tee -a /etc/fstab

elif [ "$nb_subfolder" = "6" ] ; then
	echo -n "Entrez ici le nom de votre sous-dossier 1 : " ; read folder1
	echo -n "Entrez ici le nom de votre sous-dossier 2 : " ; read folder2
	echo -n "Entrez ici le nom de votre sous-dossier 3 : " ; read folder3
	echo -n "Entrez ici le nom de votre sous-dossier 4 : " ; read folder4
	echo -n "Entrez ici le nom de votre sous-dossier 5 : " ; read folder5
	echo -n "Entrez ici le nom de votre sous-dossier 6 : " ; read folder6
	mkdir /home/$user/$folder0/$folder1
	mkdir /home/$user/$folder0/$folder2
	mkdir /home/$user/$folder0/$folder3
	mkdir /home/$user/$folder0/$folder4
	mkdir /home/$user/$folder0/$folder5
	mkdir /home/$user/$folder0/$folder6
	echo "#MONTAGE NFS SYNOLOGY
	$IP/volume1/$folder1/ /home/$user/$folder0/$folder1 nfs defaults,user,auto,rw,noatime,rsize=16384,wsize=16384 0 0
	$IP/volume1/$folder2/ /home/$user/$folder0/$folder2 nfs defaults,user,auto,rw,noatime,rsize=16384,wsize=16384 0 0
	$IP/volume1/$folder3/ /home/$user/$folder0/$folder3 nfs defaults,user,auto,rw,noatime,rsize=16384,wsize=16384 0 0
	$IP/volume1/$folder4/ /home/$user/$folder0/$folder4 nfs defaults,user,auto,rw,noatime,rsize=16384,wsize=16384 0 0
	$IP/volume1/$folder5/ /home/$user/$folder0/$folder5 nfs defaults,user,auto,rw,noatime,rsize=16384,wsize=16384 0 0
	$IP/volume1/$folder6/ /home/$user/$folder0/$folder6 nfs defaults,user,auto,rw,noatime,rsize=16384,wsize=16384 0 0" | sudo tee -a /etc/fstab

else

	clear
	echo "Nombre impossible pour le moment"

fi

sudo chmod -R $user:$user /home/$user/$folder0

clear

echo "Montage de vos dossier en NFS..."

notify-send "Script terminé avec succès, montages NFS ok."

sleep 1

echo Fin du Script.