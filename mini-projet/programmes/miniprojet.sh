#!/usr/bin/env bash

#lignes permettant la vérifications des arguments : 
if [ $# -ne 1 ]
then
	echo "un argument attendu exactement"
	exit
else

if [ ! -f ../urls/$1 ]
	then
		echo "le fichier n'existe pas"
		exit
	fi
fi

#construction des variables utile dans la construction de notre tableau, le premier argument est le fichier texte d'urls:
URLS=$1
lineno=1

#construction du début du fichier html avec les métadonnées : 
echo "<html>
	<head>
		<meta charset="UTF-8"/>
	</head>
	<body>"


echo "		<table>
			<tr><th>ligne</th><th>URL</th><th>code HTTP</th><th>encodage</th></tr> "

#remplissage du tableau html : 
while read -r URL
do
	reponse=$(curl -s -I -L -w "%{http_code}" -o /dev/null $URL)
	encodage=$(curl -s -I -L -w "%{content_type}" -o /dev/null $URL | grep -P -o "charset=\S+" | cut -d"=" -f2 | tail -n 1)
	echo "				<tr>
					<td>$lineno</td>
					<td>$URL</td>
					<td>$reponse</td>
					<td>$encodage</td>
				</tr>"
	lineno=$(expr $lineno + 1)
done < ../urls/$URLS

#fermetures du tableau avec les balises fermantes html : 
echo " 		</table>
	</body>
</html>"

