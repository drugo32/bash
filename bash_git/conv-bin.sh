#!/bin/bash
echo -n 'inserisci un numero binario:'
read BINARIO
NUMERO=0
RES=0
i=0
size=${#BINARIO}
let size=size-1

while [ $size -gt -1 ]
do
  NUM="${BINARIO:$size:1}"
  if [ $NUM == 1 ]; then
   #echo "indice $i"
   AA=$((2 ** $i))
   echo "res 2*$i $AA" 
   RES=$((RES+AA))
   #echo $RES
  fi
  let i=i+1
  let size=size-1
done
echo $RES


