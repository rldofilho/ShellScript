#! /bin/bash

a=$(cat dados.txt | grep 'Nelson' | awk '{print $3}' | awk 'NR==1')
b=$(cat dados.txt | grep 'Nelson' | awk '{print $3}' | awk 'NR==2')

c=$(($a + $b))

echo Nelson $c
cat dados.txt | grep '' | awk 'NR==2 {print $1 " " $3}'
cat dados.txt | grep '' | awk 'NR==4 {print $1 " " $3}'
