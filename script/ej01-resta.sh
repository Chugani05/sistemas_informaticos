#!/bin/bash

############################################
#
# Nombre: resta.sh
# Autor: Rashi Chugani <chugani205@gmail.com>
#
# Objetivo: Realizar la resta de dos números.
#
# Entrada: Dos números para restar.
# Salida: Resultado de la resta.
#
# Historial: 
#   2024-01-08: versión 1.0
#   2024-01-20: versión 2.0
#
############################################

# Almacenar los argumentos en variables
numero1=$1
numero2=$2


if [ $# -eq 0 ]
then
	echo "ERROR: No has indicado argumentos. Debes indicar 2 argumentos"
	echo "SINTAXIS: $0 <primer_numero> <segundo_numero>"
	exit 

elif [ $# -eq 1 ]
then
	echo "Perfecto!! Has indicado 2 argumentos"
else
	echo "Has indicado $# argumentos, sólo usaremos los dos primeros y se ignorará el resto"
fi


# Realizar la resta
resultado=$((numero1 - numero2))

# Mostrar el resultado
echo "La resta de $numero1 y $numero2 es: $resultado"