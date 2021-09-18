#! /bin/bash

echo 'Informe um E-mail: '; read MAIL

if echo $EMAIL | egrep '^([a-zA-Z0-9_-.])+@[0-9A-zA-Z.-]+\.[a-z]{2,3}$'; then
	echo 'E-mail Válido!'
else
	echo 'E-mail não validado!'
fi
