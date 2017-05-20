#!/bin/bash

 pause(){

echo "Appuyer sur Enter pour continuer"

read

}

rep=1

while [ "$rep" -ge 1 ];

do

clear

echo "# Bienvenue sur mon projet SYS #"

echo"#^______________________________________________________^#"

echo "#                                                     #"

printf "menu:\n\n"

echo "# a) Informations des utilisateurs enregistré il y'a trois (03)jours #"

echo "# b) Acquisition, Installation et Lancement de l'environnement

XAMPP #"

echo "# c) Archivage des éléments du repertoire personnel qui ont été modifier par
l'utilisateur #"



echo "# sudoer il y'a deux jours dans le peripherique

externe #"

echo "# d) Information sur l'utilisation du disque, de la mémoire, du processeur et du

swap #"

echo "# (Q/q) quitter.

#"

echo "#^

______________________________________________________ #"

echo "#

#"

echo "#

#"

echo "# Script realise par TSAMBA MIGUEL YANN

13A416FS #"

read -r

choix

case $choix in

#listons tous les utilisateurs

 'a') cut -d '':'' -f 1 /etc/passwd>users.txt

#listons les repertoires personnels des utilisateurs se trouvantdans /home

ls/home>user_foders

while read line

do

while read line1

do

if [ $line == $line1 ] ;

then

echo

$line1>user1

fi

done<user_foders

done<all_users

find /home/* -type d -ctime 3 -

print>userx

while read

line1

do

while read

user

do

if [ $line1 == '/home/'$user ] ;

then

echo " $user a ete cree il ya

3jour">3days_user.txt

fi

done<user1

done<userx

cat 3days_users.txt

pause
;;


 'b') echo "telechargement de xampp"

 Xamp()

{

sudo /opt/lampp/lampp start 2>errtest ;

if [ $? -ne 0 ];

then

wget https://www.apachefriends.org/xampp-files/7.0.18/xampp-osx-7.0.18-0-

installer.dmg;

sudo chmod 755 xampp-linux-*-

installer.run;

sudo ./xampp-linux-*-

installer.run;

sudo /opt/lampp/lampp start 2>errtest;

fi

pause
;;

 
 'c') echo "archivage des elements du repertoire personnel"

#archivage des fichier du rep home modifier par le sudoer il ya 2 jours

#tmy-al est le mon de notre utilisateur courant

mkdir -p /home/miguel/archive

find /home/tmy-al/ -type f -mtime 2 -print>/home/miguel

#lecture dans le fichier

while read line do

cp $line archive

done </home/miguel

tar -czvf archive.tar.gz archive

mv archive.tar.gz /media/miguel/archive.tar.gz

pause

 echo "les informations sur l'utilisation du

disque :"

vmstat

pause
;;



rep=0;;

esac

done

exit

