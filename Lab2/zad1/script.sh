#!/bin/bash
rm -rf $1/*

mkdir -p $1/A/B $1/A/C/D $1/E

echo "Test 1" >> $1/A/plik1.txt
echo "Test 2" >> $1/A/B/plik2.txt
echo "Test 3" >> $1/A/C/D/plik3.txt
echo "Test 4" >> $1/E/plik4.txt

# Ścieżki bezwzględne (kanoniczne)
ln -s $(pwd)/$1/A/plik1.txt $1/E/link_bez_plik1
ln -s $(pwd)/$1/E/plik4.txt $1/E/link_bez_plik4

# Ścieżki wzgledne
ln -s ../../A/plik1.txt $1/A/B/link_plik1
ln -s ../A/B/plik2.txt $1/E/link_plik2
ln -s ../A/C/D/plik3.txt $1/E/link_plik3
ln -s ../../../E/plik4.txt $1/A/C/D/link_plik4