#!/usr/bin/env bash

texte=$1

regex1=$(tr "([[:digit:]]+|[[:punct:]]+|[|]|«|»|—)" " " < $texte > resultat_regex1.txt)

regex2=$(tr " +" " " < resultat_regex1.txt > resultat_regex2.txt)

regex3=$(tr " " "\n" < resultat_regex2.txt)

#regex3=$(egrep "([[:alpha:]]+)" resultat_regex1.txt | sed -e "\1\n")

echo $regex3
