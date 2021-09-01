#! /bin/bash

if [ $# -lt 1 ];
then
	echo "Informe ao menos 1 argumento!"
	exit 1
fi

for arq in $*
do
	if ls ${*} > /dev/null; then
		echo "$* SIM!"
	elif ls ${*} 2> /dev/null; then
		echo "$* NÃO!"
	else
		echo "Comando inválido!"
	fi
done
