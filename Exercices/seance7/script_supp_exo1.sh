#!/usr/bin/env bash

FICHIER="$1"

# Si non est fichier premier argument / si le premier argument n'est pas un fichier S
if [ ! -f "$1" ]
then
    echo "pas de fichier donné en argument"
    exit 1
fi

cat "$FICHIER" | grep -P -o "\p{Latin}+" | tr "[:upper:]" "[:lower:]" | tr "ÉÀÊ" "éàê"

