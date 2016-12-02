#!/bin/bash

echo "installation de fedy"
bash -c 'su -c "curl http://folkswithhats.org/fedy-installer -o fedy-installer && chmod +x fedy-installer && ./fedy-installer"' 

sleep 2s
echo ""
echo "Merci d'avoir choisis le script. Au revoir"
