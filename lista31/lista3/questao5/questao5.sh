#! /bin/bash
while true; do
	echo "Digite uma das opções abaixo!"
	echo
	echo "Listar apenas os diretórios (-a)"
	echo "Listar apenas os arquivos executáveis (-b)"
	echo "Listar apenas os links simbólicos (-c)"
	echo "Listar apenas os scripts (-d)"
	echo "Listar apenas os arquivos com tamanho menor que 200 Bytes (-e)"
	echo
	read -p "Digite uma das opções: " opc

	case $opc in
		"-a") ls -ld ;;
		"-b") find -executable ;;
		"-c") find . -type l -ls ;;
		"-d") find | grep .sh ;;
		"-e") find . -type f -size -200c ;;
	esac
done
