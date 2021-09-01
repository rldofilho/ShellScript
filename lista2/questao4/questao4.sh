#! /bin/bash

a=$1
b=$2
c=$3

ls ${a} &> /dev/null && echo "SIM!" || echo "NÃO!"
ls ${b} &> /dev/null && echo "SIM!" || echo "NÃO!"
ls ${c} &> /dev/null && echo "SIM!" || echo "NÃO!"

