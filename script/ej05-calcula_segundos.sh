#!/bin/bash

############################################
#
# Nombre: ej05-calcula_segundos.sh
# Autor: Rashi Chugani <chugani205@gmail.com>
#
# Objetivo: convertir el tiempo a segundos
#
# Entrada: 1: días, 2: horas, 3: minutos, 4: segundos
# Salida: mensaje
#
# Historial:
#   2024-01-11: versión 1.0
#   2024-01-21: versión 2.0
#
############################################

# Argumentos
dias=$1
horas=$2
minutos=$3
segundos=$4


if [ $# -eq 0 ]
then
	echo "ERROR: No has indicado argumentos. Debes indicar 4 argumentos"
	echo "SINTAXIS: $0 <dias> <horas> <minutos> <segundos>"
	exit 

elif [ $# -eq 1 ]
then
	echo "Perfecto!! Has indicado 4 argumentos"
else
	echo "Has indicado $# argumentos, sólo usaremos los dos primeros y se ignorará el resto"
fi


# Calculo del tiempo
tiempo_en_segundos=$((($dias * 86400) + ($horas * 3600) + ($minutos * 60) + $segundos))

# Resultado
echo "$dias días, $horas horas, $minutos minutos y $segundos segundos son $tiempo_en_segundos segundos"
