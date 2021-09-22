#! /bin/bash

cat nomes.txt | awk 'NR>=1 {print $2 " " $3}' | sed 's/[0-9]//g' > meninos.txt
cat nomes.txt | awk 'NR>=1 {print $4" "$5}' | sed 's/[0-9]//' > meninas.txt
