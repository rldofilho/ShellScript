#! /bin/bash

read arq1
read arq2

a=$arq1
b=$arq2

a1=$(cat ${a} | wc -l)
b1=$(cat ${b} | wc -l)

if (( ${a1} > ${b1} )) && ls ${a} &> /dev/null || echo "Erro: o arquivo ${a} não existe!"; then
	echo "${a}"

elif (( ${a1} < ${b1} )) && ls ${b} &> /dev/null || echo "Erro: o arquivo ${b} não existe!"; then
	echo "${b}"
fi
