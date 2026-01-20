#!/usr/bin/env bash

set -e
set -u
set -o pipefail


1eso() {
for letra in {a..d}; do
echo "1eso$letra"
done
}
2eso() {
for letra in {a..d}; do
echo "2eso$letra"
done
}
3eso() {
for letra in {a..d}; do
echo "3eso$letra"
done
}
4eso() {
for letra in {a..d}; do
echo "4eso$letra"
done
}
alumnos() {
for num in {1..30}; do
samba-tool user add "alumno$1_$num" "alumno$1_$num"
samba-tool group addmembers "$nivel" "alumno$1_$num"
done
}

niveles1eso() {
# Definir el array
niveles=("1esoA" "1esoB" "1esoC" "1esoD")

# for en la lista de cadenas de caracteres
for nivel in "${niveles[@]}"; do
#    echo "Nivel: $nivel"
samba-tool group add "$nivel"
    alumnos "$nivel"
done
}

niveles2eso() {
# Definir el array
niveles=("2esoA" "2esoB" "2esoC" "2esoD")

# for en la lista de cadenas de caracteres
for nivel in "${niveles[@]}"; do
#    echo "Nivel: $nivel"
samba-tool group add "$nivel"
    alumnos "$nivel"
done
}

niveles3eso() {
# Definir el array
niveles=("3esoA" "3esoB" "3esoC" "3esoD")

# for en la lista de cadenas de caracteres
for nivel in "${niveles[@]}"; do
#    echo "Nivel: $nivel"
samba-tool group add "$nivel"
    alumnos "$nivel"
done
}

niveles4eso() {
# Definir el array
niveles=("4esoA" "4esoB" "4esoC" "4esoD")

# for en la lista de cadenas de caracteres
for nivel in "${niveles[@]}"; do
#    echo "Nivel: $nivel"
samba-tool group add "$nivel"
    alumnos "$nivel"
done
}
niveles1eso
niveles2eso
niveles3eso
niveles4eso
#1eso
#2eso
#3eso
#4eso
#alumnos "1eso"
