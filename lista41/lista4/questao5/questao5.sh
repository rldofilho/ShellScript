#! /bin/bash

a=$(cat numeros | egrep -o '[0-9]' | awk 'NR==1')
b=$(cat numeros | egrep -o '[0-9]' | awk 'NR==2')
c=$(cat numeros | egrep -o '[0-9]' | awk 'NR==3')
d=$(cat numeros | egrep -o '[0-9]' | awk 'NR==4')
e=$(cat numeros | egrep -o '[0-9]' | awk 'NR==5')
f=$(cat numeros | egrep -o '[0-9]' | awk 'NR==6')
g=$(cat numeros | egrep -o '[0-9]' | awk 'NR==7')
h=$(cat numeros | egrep -o '[0-9]' | awk 'NR==8')
i=$(cat numeros | egrep -o '[0-9]' | awk 'NR==9')
j=$(cat numeros | egrep -o '[0-9]' | awk 'NR==10')
k=$(cat numeros | egrep -o '[0-9]' | awk 'NR==11')
l=$(cat numeros | egrep -o '[0-9]' | awk 'NR==12')

echo "(${a}${b}) ${c} ${d}${e}${f}${g}-${h}${i}${j}${k}${l}"
