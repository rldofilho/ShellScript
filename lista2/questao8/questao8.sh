#! /bin/bash

PRIMEIRO=$1
SEGUNDO=$2

[ $PRIMEIRO -eq $((SEGUNDO -2 )) -o $SEGUNDO -eq $((PRIMEIRO -2 )) ] && echo 'Sem intervalo entre eles' && exit

if [ $PRIMEIRO -gt $SEGUNDO ]; then
	MAIOR=$PRIMEIRO && MENOR=$SEGUNDO
elif [ $SEGUNDO -gt $PRIMEIRO ]; then
	MAIOR=$SEGUNDO && MENOR=$PRIMEIRO
else
	echo "$PRIMEIRO é igual a $SEGUNDO, nãohá intervalo entre eles!"
fi

VALOR=$((MENOR+1))

while [ $VALOR -lt $MAIOR ]
do
	[ $(expr $VALOR % 2) -ne 0 ] && echo $VALOR
	VALOR=$((VALOR+1))
done
