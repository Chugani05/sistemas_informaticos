@echo off
setlocal

REM Establecer los valores por defecto de base y altura
set "base=7"
set "altura=4"

REM Verificar la cantidad de argumentos proporcionados por el usuario
if "%~2" neq "" (
    set "base=%~1"
    set "altura=%~2"
) else if "%~1" neq "" (
    set "base=%~1"
)

REM Calcular el área
set /a area=base * altura

REM Mostrar información sobre el rectángulo
echo Vamos a pintar un rectángulo de base: %base%, altura: %altura% y área: %area%

REM Pintar el rectángulo
for /l %%i in (1,1,%altura%) do (
    for /l %%j in (1,1,%base%) do (
        echo | set /p="# "
    )
    echo.
)

endlocal
