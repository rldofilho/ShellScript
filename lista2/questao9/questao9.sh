#! /bin/bash

a=$1
b=$2

soma=0
for (( i=a; i<=b; i++ )); do
	(( soma+=$i ));
done
echo $soma
