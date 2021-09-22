#! /bin/bash

echo -p "Informe um arquivo: "; read arq

cat $arq | sed 's/[0-9]//g' | sed 's/[.]/**!!CENSU--RADO!!**/' | sed 's/[.]//g'

