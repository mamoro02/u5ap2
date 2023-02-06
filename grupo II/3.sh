#!/bin/bash

cuantos='ls -l ./$1/*.txt | greg txt | wc -l
rm ./$1/*.txt
echo "He borrado $cuantos archivos txt"