#! /bin/bash

echo -n "Digite um endereço IP: "; read ip1

CONV=({0..1}{0..1}{0..1}{0..1}{0..1}{0..1}{0..1})

ip=""

for i in 'echo ${ip1} | tr "." " "'; do
	ip="${ip}.${CONV[${i}]}"

done

#QUEBRA OS OCTETOS

A=$(echo ${ip1} | tr '.' ' ' | awk '{print $1}')
B=$(echo ${ip1} | tr '.' ' ' | awk '{print $2}')
C=$(echo ${ip1} | tr '.' ' ' | awk '{print $3}')
D=$(echo ${ip1} | tr '.' ' ' | awk '{print $4}')

#QUEBRA OS BINÁRIOS

a=$(echo ${ip:1} | tr '.' ' ' | awk '{print $1}')
b=$(echo ${ip:1} | tr '.' ' ' | awk '{print $2}')
c=$(echo ${ip:1} | tr '.' ' ' | awk '{print $3}')
d=$(echo ${ip:1} | tr '.' ' ' | awk '{print $4}')

#EXIBE O RESULTADO

echo "Octeto #1: ${A}" em binário ${a}
echo "Octeto #2: ${B}" em binário ${b}
echo "Octeto #3: ${C}" em binário ${c}
echo "Octeto #4: ${D}" em binário ${d}

exit
