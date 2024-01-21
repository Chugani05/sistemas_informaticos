#!/bin/bash

############################################
#
# Nombre: ej06-calcula_tiempos.sh
# Autor: Rashi Chugani <chugani205@gmail.com>
#
# Objetivo: convertir el segundos a tiempo
#
# Entrada: 1: segundos
# Salida: mensaje
#
# Historial:
#   2024-01-11: versión 1.0
#
############################################

tiempo_en_segundos=$1

dias=$((tiempo_en_segundos / 86400))
segundos_restantes=$((tiempo_en_segundos % 86400))

horas=$((segundos_restantes / 3600))
segundos_restantes=$((segundos_restantes % 3600))

minutos=$((segundos_restantes / 60))
segundos=$((segundos_restantes % 60))

echo "$tiempo_en_segundos segundos son $dias días, $horas horas, $minutos minutos y $segundos segundos"