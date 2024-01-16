#!/bin/bash

############################################
# Nombre: ej02-crea_usuario.sh
# Autor: Rashi Chugani <chugani205@gmail.com>
#
# Objetivo: simular la creacion de un usuario
#
# Entrada: 1: nombre, 2: apellido, 3: usuario
# Salida: mensaje
#
# Versión: 2024-01-08: versión 1
############################################
nombre=$1
apellido=$2
usuario=$3

echo "Bienvenido, $nombre"
echo "Tus datos son $nombre, $apellido"
echo "Vamos a crear tu usuario: $usuario"
echo "Tu nueva ID es $RANDOM