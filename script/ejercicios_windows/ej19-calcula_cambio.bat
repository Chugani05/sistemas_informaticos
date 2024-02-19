@echo off
setlocal enabledelayedexpansion

REM Verificar si se proporcionó el precio del artículo como argumento
if "%~1"=="" (
    echo Uso: %0 ^<precio_del_articulo^>
    exit /b 1
)

REM Obtener el precio del artículo del primer argumento
set "precio_articulo=%~1"

REM Solicitar el dinero entregado por el cliente
set /p dinero_entregado="Indique el dinero pagado: "

REM Calcular el cambio
set /a cambio=dinero_entregado - precio_articulo

echo Se ha comprado un artículo de %precio_articulo% euros y ha pagado %dinero_entregado% euros.
echo El cambio son %cambio% euro(s), debe entregar:

REM Definir un array de billetes y su valor
set "billetes=500 200 100 50 20 10 5 2 1"

REM Iterar sobre cada billete para calcular la cantidad a entregar
for %%b in (%billetes%) do (
    set /a cantidad=cambio / %%b
    if !cantidad! gtr 0 (
        echo !cantidad! billete(s) de %%b euro(s)
        set /a cambio=cambio - (cantidad * %%b)
    )
)

endlocal
