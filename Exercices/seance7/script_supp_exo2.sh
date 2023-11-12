#!/usr/bin/env bash

texte=$1
nbr_mot=$2

liste_mot=$(./script_supp.sh $texte)

echo $liste_mot > liste_mot.txt

while read -r mot
do
	reponse=$(grep $mot | sort -nr)
	echo $reponse
done < liste_mot.txt