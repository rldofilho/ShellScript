#! /bin/bash

a=$1
b=$(cat ${a} | wc -l)

if ls ${a} &> /dev/null && (( ${b} > 5 )); then
	echo "BAD"
else
	echo "${a}"
	head -n 1 ${a}
fi
