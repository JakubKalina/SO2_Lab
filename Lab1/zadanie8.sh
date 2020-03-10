#!/bin/bash

# $1 pierwszy parametr to katalog

# Będą 2 zagnieżdzenia
if [ ! -d $1 ]
then
	echo "Argument nie jest katalogiem"
fi

if [ "$#" -ne 1 ]
then
	echo "Zła ilość argumentów"
else

for plik1 in $1/*
do
	if [ -f $plik1 ]
	then
		echo $plik1
	fi

	if [ -d $plik1 ]
	then
		for plik2 in $plik1/*
		do
			if [ -f $plik2 ]
			then
				echo $plik2
			fi
		done
	fi
done

fi
