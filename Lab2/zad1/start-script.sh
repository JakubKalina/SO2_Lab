#!/bin/bash

if [ -d $1 ] && [ "$#" -eq 1 ]
then
    sh script.sh $1
    cp -d $1/E/link_bez_plik1 $1/A/C/
    cp -d $1/E/link_plik3 $1/A/C/
    tree
else
    echo "Argument musi być katalogiem lub podano złą ilość parametrów lub katalog, który nie istnieje"
fi