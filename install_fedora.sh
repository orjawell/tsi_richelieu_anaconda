#!/bin/bash
clear
echo "Script auto - Telechargement des logiciels neccesaires pour la Prepa TSI"
echo " "
echo " "
echo "Script cree par Akram Shal pour les utilisateurs de Linux en Prepa TSI au Lycée Richelieu - Ruel Malmaison"

sleep 100000 &

echo "Ce script va installer automatiquement les logiciels suivants :"
echo  "Anaconda 3 Full Package with Spyder 5.1.5"
echo  "Automatic Update for Fedora Linux"

sleep 10 &
echo "etes vous sur pour l'installation de l'intégralité des logiciels ? (temps estimé : 20 min) [o/N]"
read yes
if [[ ($yes == o) ]]; then 
echo "Telechargement en cours"
curl -O https://repo.anaconda.com/archive/Anaconda3-2021.11-Linux-x86_64.sh
sleep 5 &
echo "Merci de bien vouloir suivre les instructions de l'installateur"
sleep 30 &
bash Anaconda3-2021.11-Linux-x86_64.sh
sleep 10 &
echo "Lancement des MàJ"
sudo dnf update
sleep 10 &
echo "Téléchargement terminé, Bienvenue sur votre environnement de travail."
rm -i Anaconda3-2021.11-Linux-x86_64.sh
fi

