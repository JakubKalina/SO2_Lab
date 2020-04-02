#!/bin/bash

if [ -d $1 ] && [ "$#" -eq 1 ]
then

    mkdir $1/a
    mkdir $1/b
    touch $1/testowy1.txt $1/testowy2.txt $1/pliktestowy3.txt $1/test9.png 
    touch $1/a/plik1.png $1/a/plik2.png $1/a/plik3.png $1/a/plik4.png
    touch $1/b/plik1.jpg $1/b/plik2.jpg $1/b/plik3.jpg 


    echo "Podpunkt a:"
    find $1 -type f -name "*test*" -print | sort | head -3


    echo "Podpunkt b:"
    find $1 -type f -name '*.png' -o -name '*.jpg' | while read found
    do
        echo $(pwd)/$found | tr '/' '|'
    done


    echo "Podpunkt c:"
    find $1 -maxdepth 2 -type f -mmin +1 -exec rm -rf {} \;


else
    echo "Argument musi być katalogiem lub podano złą ilość parametrów lub katalog, który nie istnieje"
fi