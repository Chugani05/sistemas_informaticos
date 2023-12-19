#!/bin/bash

############################################
#
# Nombre: suma.sh
# Autor: Rashi Chugani <chugani205@gmail.com>
#
# Objetivo: mostrar un saludo en pantalla
#
# Entrada: 1, 2 y 3
# Salida: suma
#
# Historial:
#   2023-12-18: versión 1
############################################

resultado=$(($1+$2))

echo "$1+$2=$resultado"