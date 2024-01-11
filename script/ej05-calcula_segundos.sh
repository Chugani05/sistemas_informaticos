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
#   2024-01-11: versión 1
############################################

dias=$1
horas=$2
minutos=$3
segundos=$4

tiempo_en_segundos=$((($dias * 86400) + ($horas * 3600) + ($minutos * 60) + $segundos))

echo "$dias días, $horas horas, $minutos minutos y $segundos segundos son $tiempo_en_segundos segundos"
