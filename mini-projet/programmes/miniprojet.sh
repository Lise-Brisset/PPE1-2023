#!/usr/bin/env bash

#lignes permettant la vérifications des arguments : 
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

#construction des variables utile dans la construction de notre tableau, les arguments sont le fichier texte d'urls et le fichier html du tableau : 
URLS=$1
lineno=1
tableau=$2

#construction du début du fichier html avec les métadonnées : 
echo "<html>
	<head>
		<head charset="UTF-8"/>
	</head>
	<body>
		<table>" > ../tableaux/$tableau

#remplissage du tableau html : 
while read -r URL
do
	reponse=$(curl -s -I -L -w "%{http_code}" -o /dev/null $URL)
	encodage=$(curl -s -I -L -w "%{content_type}" -o /dev/null $URL | grep -P -o "charset=\S+" | cut -d"=" -f2 | tail -n 1)
	echo "				<tr><th>$lineno</th><td>$URL</td><td>$reponse</td><td>$encodage</td></tr>" >> ../tableaux/$tableau
	lineno=$(expr $lineno + 1)
done < ../urls/$URLS

#fermetures du tableau avec les balises fermantes html : 
echo " 		</table>
	</body>
</html>" >> ../tableaux/$tableau

