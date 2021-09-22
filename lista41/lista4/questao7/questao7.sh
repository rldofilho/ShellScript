#! /bin/bash

function rminus {
	echo $(cat $1 | tr -d 'a-z')
}

function rdigit {
	echo $( cat $1 | sed 's/[0-9]//g')
}

function subcarac {
	echo $(cat texto | sed 's/[^a-zA-Z0-9]/./g')
}
