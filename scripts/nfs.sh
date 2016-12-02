#!/bin/bash

echo "Entrer ici votre nom d'utilisateur"
sleep 1
echo -n "Entrer ici votre nom d'utilisateur: "; read user
echo -n "Entrer ici votre nom de dossier maitre de votre NFS (ex:synology ou OMV) "; read folder0
echo -n "Entrer ici votre nom de dossier partagé 1: "; read folder1
echo -n "Entrer ici votre nom de dossier partagé 2: "; read folder2
echo -n "Entrer ici votre nom de dossier partagé 3: "; read folder3
echo -n "Entrer ici votre nom de dossier partagé 4: "; read folder4
echo -n "Entrer ici votre nom de dossier partagé 5: "; read folder5
echo -n "Entrer ici votre nom de dossier partagé 6: "; read folder6



#installation du service NFS
echo "#MONTAGE NFS SYNOLOGY
192.168.1.38:/volume1/$folder1/ /home/$user/$folder0/$folder1 nfs defaults,user,auto,rw,noatime,rsize=16384,wsize=16384 0 0
192.168.1.38:/volume1/$folder2/ /home/$user/$folder0/$folder2 nfs defaults,user,auto,rw,noatime,rsize=16384,wsize=16384 0 0
192.168.1.38:/volume1/$folder3/ /home/$user/$folder0/$folder3 nfs defaults,user,auto,rw,noatime,rsize=16384,wsize=16384 0 0
192.168.1.38:/volume1/$folder4/ /home/$user/$folder0/$folder4 nfs defaults,user,auto,rw,noatime,rsize=16384,wsize=16384 0 0
192.168.1.38:/volume1/$folder5/ /home/$user/$folder0/$folder5 nfs defaults,user,auto,rw,noatime,rsize=16384,wsize=16384 0 0
192.168.1.38:/volume1/$folder6/ /home/$user/$folder0/$folder6 nfs defaults,user,auto,rw,noatime,rsize=16384,wsize=16384 0 0" | sudo tee -a /etc/fstab

