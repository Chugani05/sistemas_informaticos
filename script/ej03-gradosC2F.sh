#!/bin/bash

############################################
#
# Nombre: ej03-gradosC2F.sh
# Autor: Rashi Chugani <chugani205@gmail.com>
#
# Objetivo: convertir grados Celsius a Fahrenheit
#
# Entrada: 1: celsius
# Salida: mensaje
#
# Historial:
#   2024-01-08: versión 1
############################################

Celsius=$1

Fahrenheit=$((Celsius * 9/5 + 32))

echo "$Celsius grados Celsius corresponden a $Fahrenheit grados Fahrenheit"