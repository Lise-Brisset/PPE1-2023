#!/usr/bin/env bash

#nous allons chercher les bigrammes dans tout le texte

FICHIER="$1"

# Si la deuxième variable est vide alors TOPN vaut 25
if [ -z "$2" ]
then
	TOPN=25
else
	TOPN="$2"
fi

# Si la variable ne correspond pas à un valeur en chiffre
if ! [[ "$TOPN" =~ ^0*[1-9][0-9]*$ ]]
then
	echo "Il nous nous faut un enier positif non nul."
	exit
fi
# Faire attention à la manière dont on fait appel à nos arguments


#on crée la colonne 1 dans un fichier
bash ./script_supp_exo1.sh $FICHIER > col1

#on crée la colonne 2 dans un autre fichier avec "_" avant chaque mot
echo "_" > col2
bash ./script_supp_exo1.sh $FICHIER >> col2

paste col1 col2 | sort | uniq -c |sort -nr | head -n $TOPN
