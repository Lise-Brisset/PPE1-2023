#!/usr/bin/bash
echo "Nombre de $1 en 2016 : "
cat ~/TAL/github/PPE1-2023/Fichiers/ann/2016/*/* | grep $1 | wc -l
echo "Nombre de $1 en 2017 : "
cat ~/TAL/github/PPE1-2023/Fichiers/ann/2017/*/* | grep $1 | wc -l
echo "Nombre de $1 en 2018 : "
cat ~/TAL/github/PPE1-2023/Fichiers/ann/2018/*/* | grep $1 | wc -l

