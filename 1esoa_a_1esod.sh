#!/usr/bin/env bash
set -e
set -u
set -o pipefail

frase='a'
Let='a'
veces=1
Num=1
while [ $veces -le 4 ]
do
        frase=eso"$Num$Let"
	echo "$frase"
                if [ $veces -eq 1 ]
                then
                        Let='b'
                elif [ $veces -eq 2 ]
                then
			Let='c'
                else
                        Let='d'
                fi
        veces=$(( $veces + 1))
done
