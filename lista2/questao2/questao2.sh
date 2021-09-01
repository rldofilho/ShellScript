#! /bin/bash

a=$1
b=$2
c=$3
d=$4

ls ${a} && ${b} && ${c} && ${d} >> log.log 2>> erro.log
