@echo off
setlocal

REM Verificar si se proporcionó el número correcto de argumentos
if "%~1"=="" (
    echo Por favor, proporciona el número de segundos como único argumento.
    exit /b 1
)

REM Verificar si se proporcionó más de un argumento
if not "%~2"=="" (
    echo Este script solo acepta un único argumento.
    exit /b 1
)

REM Convertir el parámetro en un número entero
set /a segundos=%~1

REM Calcular días, horas, minutos y segundos
set /a dias=segundos / 86400
set /a horas=(segundos % 86400) / 3600
set /a minutos=(segundos % 3600) / 60
set /a segundos=segundos %% 60

echo %dias% día(s), %horas% hora(s), %minutos% minuto(s) y %segundos% segundo(s)

endlocal