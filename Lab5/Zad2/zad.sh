#!/bin/bash

# Podpunkt a
REGXA="/^\d+$/"
awk -v '$REGXA { print "Znaleziono pkt a:"$1""}' ./dane.txt

# Podpunkt b
REGXB="/^[a-z]*$/"
awk -v '$REGXB { print "Znaleziono pkt b:"$1""}' ./dane.txt

# Podpunkt c
REGXC="/^(.)\1{1,}$/"
awk -v '$REGXC { print "Znaleziono pkt c:"$1""}' ./dane.txt