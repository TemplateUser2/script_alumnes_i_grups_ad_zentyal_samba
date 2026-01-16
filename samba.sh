#!/usr/bin/env bash
set -e
set -u
set -o pipefail

frase='a'
Let='a'
veces=1
Num=1
while [ $veces -le 16 ]
do
        frase=eso"$Num$Let"
	echo "$frase"
        samba-tool group add "$frase"
        Numalu=1
        while [ $Numalu -le 30 ]
        do
                alum=alumne"$Numalu$frase"
                echo "$alum"
		samba-tool user add "$alum" "$alum"
                Numalu=$(( $Numalu + 1))
        done
        Num=$(( $Num + 1))
        if [ $Num -eq 5 ]
        then
                Num=1
#                echo 'cc'
                if [ $veces -eq 4 ]
                then
                        Let='b'
                elif [ $veces -eq 8 ]
                then
			Let='c'
                else
                        Let='d'
                fi
        fi
        veces=$(( $veces + 1))
done
