#!/usr/bin/bash
echo "Les $3 lieux les plus cités toutes années confondues : "
cat ~/TAL/github/PPE1-2023/Fichiers/ann/$1/$2/* | grep Location | cut -f 3 | sort | uniq -c | sort -nr | head -n $3
