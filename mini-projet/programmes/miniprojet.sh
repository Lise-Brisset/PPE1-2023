#!/usr/bin/env bash

if [ $# -ne 1 ]
then
	echo "Un argument attendu exactement"
	exit
else
	if [ -f ../urls/$1 ]
	then
		echo "on bien un fichier"
	else
		echo "le fichier n'existe pas"
		exit
	fi
fi

fichierURL=$1
lineno=0

while read -r line;
code=$(curl -i -s ${line} | egrep "HTTP/[[:digit:]](\.[[:digit:]])?\s*[[:digit:]]{3}")
encodage=$(curl -i -s ${line} | egrep "charset")

if [ -n $encodage ]
then
	do
		echo -e ${lineno} "\t" ${line} "\t" $code "\t" $encodage
		lineno=$(expr ${lineno} + 1)
	done < "../urls/$fichierURL";
else
	if [ -z $encodage ]
		do
			echo -e ${lineno} "\t" ${line} "\t" $code "\t" "NON CONNU"
			lineno=$(expr ${lineno} + 1)
		done < "../urls/$fichierURL";
	fi
fi
