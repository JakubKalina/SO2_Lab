#!/bin/bash

if [ -d $1 ] && [ "$#" -eq 1 ]
then

    mkdir $1/a
    mkdir $1/b
    touch $1/testowy1.txt $1/testowy2.txt $1/pliktestowy3.txt $1/test9.png 
    touch $1/a/plik1.dat $1/a/plik2.dat $1/a/plik3.txt $1/a/plik4.txt
    touch $1/b/plik1.jpg $1/b/plik2.dat $1/b/plik3.dat

    echo "Podpunkt a:"
    find $1 \( -name "*.txt" -o -name "*.dat"  \) -size +1k -print | while read found
    do
        echo $(pwd)/$found"|"`date +"%d.%e.%Y|%H:%M:%S"` > result.dat
    done


else
    echo "Argument musi być katalogiem lub podano złą ilość parametrów lub katalog, który nie istnieje"
fi