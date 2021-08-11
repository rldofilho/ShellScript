#! /bin/bash

A=$(echo "scale=2; ((${1}*100) / $2)" | bc)
B=$(echo "scale=2; ((${2}*100) / $1)" | bc)

echo ${A}%
echo ${B}%
