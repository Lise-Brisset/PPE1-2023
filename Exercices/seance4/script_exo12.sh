#!/usr/bin/bash
echo "Nombre de $0 en 2016 : "
cat ~/TAL/github/PPE1-2023/Fichiers/ann/2016/*/* | grep $0 | wc -l
echo "Nombre de $0 en 2017 : "
cat ~/TAL/github/PPE1-2023/Fichiers/ann/2017/*/* | grep $0 | wc -l
echo "Nombre de $0 en 2018 : "
cat ~/TAL/github/PPE1-2023/Fichiers/ann/2018/*/* | grep $0 | wc -l

