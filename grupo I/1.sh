#!/bin/bash

total='cat ../ficheros_scripts/nombre.txt |wc -l'

for i in 'seq 1 $total'
do 
    linea='cat ../ficheros_scripts/nombre.txt | head -n$1 | tail -n1'
    mkdir $nombre
        for j in 'seq 1 $1'
        do
        mkdir ./nombre/personal$j
        done
done