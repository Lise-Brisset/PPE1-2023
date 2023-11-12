#!/usr/bin/env bash

if [ $# -ne 2 ]
then
	echo "deux argument attendu exactement"
	exit
else
	if [ -f $1 ]
	then
		if [ -f $2 ]
		then
			echo "on bien deux fichiers existants"
		else
			echo "le fichier n'existe pas"
			exit
		fi
	fi
fi


URLS=$1
lineno=1
tableau=$2


echo "<html>
	<body>
		<table>" > ../tableaux/$tableau


while read -r URL
do
	reponse=$(curl -s -I -L -w "%{http_code}" -o /dev/null $URL)
	encodage=$(curl -s -I -L -w "%{content_type}" -o /dev/null $URL | grep -P -o "charset=\S+" | cut -d"=" -f2 | tail -n 1)
	echo "				<tr><th>$lineno</th><td>$URL</td><td>$reponse</td><td>$encodage</td></tr>" >> ../tableaux/$tableau
	lineno=$(expr $lineno + 1)
done < ../urls/$URLS


echo " 		</table>
	</body>
</html>" >> ../tableaux/$tableau

