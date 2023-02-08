#!/bin/bash

linea= 'cat ../ficheros_scripts/precipitaciones.txt | wc -l'

for i in 'seq 1 $linea'
do
    puntero= 'cat ./ficheros_scripts/listado.txt | head -n$i | tail -n1'
    precipitaciones= "echo puntero | awk '{print $2}'"

    if [$precipitaciones == 0]
    then
        echo "El dia $i ha llovido"
    fi
done
sleep 10
