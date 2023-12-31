#!/usr/bin/env bash

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

bash ./script_supp_exo1.sh $FICHIER | sort | uniq -c |sort -nr | head -n $TOPN
