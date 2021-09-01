#! /bin/bash

a=$1
b=$2

if (( a > b )); then
	echo "Menor: ${b}"
	echo "Maior: ${a}"
else
	
	echo "Menor: ${a}"
	echo "Menor: ${b}"
fi
