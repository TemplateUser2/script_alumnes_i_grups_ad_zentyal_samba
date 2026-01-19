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
echo "alumno$1_$num"
done
}
1eso
2eso
3eso
4eso
alumnos "1eso"
