#! /bin/bash

soma=$(echo "scale=2; (($1+1)*($2-1))" | bc)

echo ${soma}
