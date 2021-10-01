#! /bin/bash

while true; do
	echo " --------Site EternalNet---------"
	echo "1 - Exibir Site"
	echo "2 - Exibir links"
	echo "3 - Exibir Imagens"
	echo "0 - Sair"

	read -p "Escolha uma das opções acima: " opc
	echo 

	case $opc in 
		1) cat /home/ronaldo/www.eternal.com.br/index.html | sed 's/<[^>]*>//g' | sed 's/var base_url/Site/' | awk '{$1=$1};1' | head -185 |  grep -Ev "^$" | sed 's/eu quero/& \n/g' | sed 's/;/& \n/g' | sed 's/Menu/& \n/g' | sed 's/contato/& \n/g' | sed 's/FAQ/& \n/g' | sed 's/3601/& \n================/g'
 ;;
		2) cat /home/ronaldo/www.eternal.com.br/index.html | grep 'http' | awk 'NR>1 {print $3 $2}' | sed 's/><//g' | sed 's/\/script>//g' | sed 's/href="//g' | sed 's/src="//g'
;;
		3) cat /home/ronaldo/www.eternal.com.br/index.html | grep '<img src' | awk 'NR==1 {print $5}' &&
		       cat /home/ronaldo/www.eternal.com.br/index.html | grep '<img src' | awk 'NR>1 {print $2}'	;;
		0) exit
	esac
done

