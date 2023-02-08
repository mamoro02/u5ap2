#!/bin/bash

total= 'cat ../ficheros_scripts/precipitaciones.txt | wc -l'

precipitaciones=0

for i in 'seq 1 $total'
do

    linea= 'cat ../ficheros_scripts/precipitaciones | head -n$i | tail -n1'

    grados= "echo $linea |  awk '{print $2}'"

    $precipitaciones= $precipitaciones+$grados
done
resultado=$precipitaciones/$total
echo "La media de precipitaciones es $resultado" 
sleep 5