#! /bin/bash

read n1
read n2

a=${n1}
b=${n2}

if (( ${a%%.*} > ${b%%.*} )); then
	echo "${b}"
else
	echo "${a}"
fi
