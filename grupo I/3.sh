#!/bin/bash

lineas= 'cat ./ficheros_scripts/listado.txt | wc -l'

linux=0
linx_u=0
windows=0
windows_u=0

for i in 'seq 1 $total'
do
    linea='cat ./ficheros_scripts/listado.txt | head -n$i | tal -n1'
    so= "echo $linea | awk '{print $2}'"
    proc= "echo $linea | awk'{print $3}'"

    if [$so = "Linux"]
    then 
        linux=$((linux+proc))
        linx_u=$((linux_u+1))
    else
        windows=$((windows+proc))
        windows_u=$((windows_u+1))
    fi
done

echo "Linux --> $linux proc y $linux_u users"
echo "Windows --> $windows proc y $linux_u users"