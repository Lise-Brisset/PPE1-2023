#!/usr/bin/bash

#si argument 1 est bien une chaine de caractères non vide :
if [ -n $1 ]
then
    echo "Le premier argument est bien une date : $1."
    #ajout de la deuxième condition, vérification si argument 2 est aussi une chaine de caractères non vide :
    if [ -n $2 ]
    then
        echo "Le deuxième argument est bien une chaine de caractère : $2."
        # renvoie le nombre d'entité donnée en argument 2 dans l'année donnée en argument 1 :
        echo "Nombre de $2 en $1 :"
        cat ~/TAL/github/PPE1-2023/Fichiers/ann/$1/*/* | grep $2 | wc -l
    else
        echo "Le deuxième argument doit être un nom d'entité."
    fi
else
    echo "Le premier argument doit être 2016 ou 2017 ou 2018"
fi



