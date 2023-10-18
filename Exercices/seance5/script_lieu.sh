#!/usr/bin/bash
# vérifie si l'année est 2016 ou 2017 ou 2018 ou "*"
if [[ $1 =~ 20(16|17|18)|\* ]]
then
    echo "Le premier argument est une année correcte : $1."
    # vérifie si le mois est compris entre 01 et 12 ou est "*"
    if [[ $2 =~ (0|1)(0|1|2|3|4|5|6|7|8|9)|\* ]]
    then
        echo "Le deuxième argument est un mois correct : $2."
        if [[ $2 =~ \* ]]
        then
            if [[ $1 =~ \* ]]
            # si le mois et l'année sont "*"
            then
                echo "Les 10 lieux les plus cités toutes années et tous mois confondus : "
                cat ~/TAL/github/PPE1-2023/Fichiers/ann/$1/$2/* | grep Location | cut -f 3 | sort | uniq -c | sort -nr | head -n 10
            # si le mois est "*" mais pas l'année
            else
                echo "Les 10 lieux les plus cités tous mois confonfus en $1 : "
                cat ~/TAL/github/PPE1-2023/Fichiers/ann/$1/$2/* | grep Location | cut -f 3 | sort | uniq -c | sort -nr | head -n 10
            fi
        # si le mois et l'année sont précisés :
        else
            if [[ $1 =~ 20(16|17|18) ]]
            then
                echo "Les 10 lieux les plus cités en $2/$1 : "
                cat ~/TAL/github/PPE1-2023/Fichiers/ann/$1/$2/* | grep Location | cut -f 3 | sort | uniq -c | sort -nr | head -n 10
            #si l'année est "*" et pas le mois :
            else
                echo "Les 10 lieux les plus cités en mois $2 toutes années confondues : "
                cat ~/TAL/github/PPE1-2023/Fichiers/ann/$1/$2/* | grep Location | cut -f 3 | sort | uniq -c | sort -nr | head -n 10
            fi
        fi
    else
        echo "Le deuxième argument n'est pas un mois correct."
    fi
else
    echo "Le premier argument n'est pas une année correcte."

fi
