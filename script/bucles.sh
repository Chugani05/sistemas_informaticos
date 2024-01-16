#!/bin/bash

############################################
# Nombre: bucles.sh
# Autor: Rashi Chugani <chugani205@gmail.com>
#
# Objetivo: ejemplos simple de bucles en scripts
#
# Versión: 2024-01-15: versión 1.0
############################################

# Bucle más simple de indicando los valores
for i in 1 2 3 4 5 6 7 8 9 10
do 
    echo "El valor de i is $i"
done

# Bucle
for i in "Monaco" "Francia" "Reino Unido" "Italia"
do 
     echo "El país es $i"
done

# Bucle con rango
for i in {1..20}
do
    echo "El valor de i es $i"
done

# Bucle con "salto" (de 1 a 20 de 3 en 3: 1, 4, 7...)
for i in {1..20..3}
do
    echo "El valor de i es $i"
done

# Bucle descendiente: 20, 17, 14...
for i in {20..1..-3}
do
    echo "El valor de i es $i"
done

# Bucle
for i in {0..100..5}
do 
    echo "El cuadrado de $i es $((i**2))"
done

# Bucle hasta un valor almacenado en una variable
read "Indique el valor máximo: " n
for i in `seq 0 $n`
do
    echo "El cuadrado de $i es $((i**2))"
done