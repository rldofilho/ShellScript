#! /bin/bash

a=$(cat a.txt | wc -l)
b=$(cat b.txt | wc -l)
c=$(cat c.txt | wc -l)

soma=$(($a+$b+$c))

echo ${soma}
