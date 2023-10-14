#!/usr/bin/bash
cat ~/TAL/github/PPE1-2023/Fichiers/ann/$1/*/* | grep $2 | wc -l
