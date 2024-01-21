#!/bin/bash

############################################
#
# Nombre: ej04-día_semana.sh
# Autor: Rashi Chugani <chugani205@gmail.com>
#
# Objetivo: determinar el día de la semana para una fecha dada
#
# Entrada: 1: día, 2: mes, 3: año
# Salida: mensaje
#
# Historial: 
#   2024-01-08: versión 1.0
#
############################################

dia=$1
mes=$2
ano=$3

fecha="$ano-$mes-$dia"
nombre_dia=$(date -d "$fecha" "+%A")

echo "El día de la semana de la fecha indicada ($dia/$mes/$ano) fue: $nombre_dia"