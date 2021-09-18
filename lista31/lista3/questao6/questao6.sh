#! /bin/bash

echo Informe uma senha: ; read -s num
senha=$num

if echo $senha | grep -qP '^.*(?=.{8,})(?=.*[A-Z])(?=.*\d)(?=.*\W)(?=.*[a-z]).*$'; then
	echo "Senha Validada com sucesso!"
	echo $senha
else
	echo "Senha não tem os requisitos necessários!!"
	echo $senha
fi
