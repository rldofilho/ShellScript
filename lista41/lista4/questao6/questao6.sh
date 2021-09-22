#1 /bin/bash

function maior {
	if (( $1 > $2 )); then
		echo $1
	else
		echo $2
	fi
}

read -p "Digite dois números: " a b
maior $a $b



function menor {
        if (( $1 < $2 )); then
                echo $1
        else
                echo $2
        fi
}

read -p "Digite dois números: " a b
menor $a $b
