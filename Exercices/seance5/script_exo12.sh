#!/usr/bin/bash

# vérifie si l'argument 1 est vide :
if [ -z $1 ]
# si c'est vrai alors informe que c'est vide :
then
    echo "L'argument entité est vide."
# autrement l'argument n'est pas vide est exécute la suite du script qui répète trois fois le script_exo1.sh en prenant en argument le nom de l'entité :
else
    echo "L'argument entité a bien été entré : $1."
    echo "Nombre de $1 en 2016"
    bash script_exo1.sh 2016 $1
    echo "Nombre de $1 en 2017"
    bash script_exo1.sh 2017 $1
    echo "Nombre de $1 en 2018"
    bash script_exo1.sh 2018 $1
fi
