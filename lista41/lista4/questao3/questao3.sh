#!/bin/bash

echo "O que deseja fazer?"
echo "R - Digite o nome do arquivo a ser processado.)"
echo "A - Remover todas as letras do arquivo."
echo "B - Remova todos os dígitos."
echo "C - Substitue todos os caracteres que não são letras por ~."
echo "Q - Sair do Script..."

read resposta
case "$resposta" in
    r|R|"")
        echo -p  "Digite o nome do arquivo a ser processado: "; read arq
	cat $arq
    ;;
    a|A)
        echo "Remover todas as letras do arquivo."
	cat $arq | sed 's/[a-zA-Z]//g'	
    ;;
    b|B)
        echo "Remova todos os dígitos."
	cat $arq | sed 's/[0-9]//g'
    ;;
    c|C)
        echo "Substitue todos os caracteres que não são letras por ~."
	if cat $arq | sed 's/[a-zA-Z]//g'; then
		echo $arq
	else
		cat $arq | sed 's/*/~/g'
	fi
    ;;
    q|Q)
	echo "Saindo do Script..."
	exit
esac
