#!/bin/bash
mkdir organized;
arr=( $(ls $1))
ARRAY=()
for ((i=0; i < ${#arr[@]}; i++)); do
string="${arr[$i]##*.}" 
if [[ ! " ${ARRAY[*]} " =~ " ${string} " ]]; then
   ARRAY+=($string)
fi
done
for ((i=0; i < ${#ARRAY[@]}; i++)); do
mkdir './organized/'${ARRAY[i]}
mv $1'/'*.${ARRAY[i]} './organized/'${ARRAY[i]}
done
echo "Sucess!"

