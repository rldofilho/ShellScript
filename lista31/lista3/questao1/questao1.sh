#! /bin/bash

lin=$( cat $1 | wc -l)

if ls $1 > /dev/null ;then
	if (( $2 < ${lin} )); then
		cat $1 | head -$2 | tail -1
	else
		echo "Falha: O arquivo $1 possui apenas ${lin} linhas!"
	fi
else
	echo "Arquivo $1 não existe!"
fi
