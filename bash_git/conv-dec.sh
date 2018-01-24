#!/bin/bash
echo -n 'inserisci un numero:'
read NUMERO
BINARIO=""
RES=$NUMERO

 while [ $RES -gt  0 ]
 do
   NUMERO=$RES
   DIVISO=$(($NUMERO % 2))
   RES=$(($NUMERO / 2))
   if [ $DIVISO = 1 ]; then
    #echo "$NUMERO-$RES $NUMERO%2"
    BINARIO="1$BINARIO"
   fi   
   if [ $DIVISO = 0 ]; then
    BINARIO="0$BINARIO"
   fi

 done

echo "biario: $BINARIO"
