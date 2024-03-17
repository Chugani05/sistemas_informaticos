# HOJA DE EJERCICIOS DE PROGRAMACIÓN DE TAREAS
## GNU/Linux 

Resuelve los siguientes apartados. Cuando se pregunte por qué comando se utilizaría, debes indicar el comando completo, con las opciones y parámetros necesarios para que funcione:
1. Guardar en un fichero llamado "cargaNextMonday.txt" situado en el HOME la carga del sistema el próximo lunes a las 2:00 am
```bash
Echo “uptime” | at 2:00am next monday > ~/cargaNextMonday.txt
```

2. Guardar en un fichero llamado "cargaAllMondays.txt" situado en el HOME la carga del sistema TODOS los lunes a las 2:00 am
```bash
crontab -e
0 2 * * 1 uptime > ~/cargaAllMondays.txt
```

3. Guardar en un fichero llamado "carga30min.txt" situado en el HOME la carga del sistema cada 30 minutos de forma indefinida
```bash
crontab -e
*/30 * * * * uptime > ~/carga30min.txt
```

4. Borrar todos los ficheros más antiguos de 30 días a las 3 de la mañana todos los días 10, 20 y 30 de cada mes
```bash
crontab -e
0 3 10,20,30 * * find ~/ -type f -mtime +30 -exec rm {} \;
```

5. Realizar los siguientes pasos (crea un script con nombre "miscript.sh" en tu HOME que simplemente imprima la fecha en el formato: "Ahora mismo son las HH:MM del día DD/MM/YYYY"). En cada tarea haz que la salida se añada a un fichero llamado "datos_fecha.txt" localizado en tu HOME.
```bash
#!/bin/bash

echo "Ahora mismo son las $(date +%H:%M) del día $(date +%d/%m/
%Y)" >> ~/datos_fecha.txt
```

1. Ejecutar el script "~/miscript.sh" en 12 horas a partir de ahora.
```bash
Echo “miscript.sh” | at now + 12 hours
```
2. Ejecutar el script "~/miscript.sh" a las horas en punto de 8:00 a 12:00 (ambas inclusive) los fines de semana de febrero a abril (ambos inclusive)
```bash
Crontab -e
0 8-12 * 2-4 6,7 ~/miscript.sh
```
3. Ejecutar el script "~/miscript.sh" justo en una semana a partir de ahora.
```bash
Echo “miscript.sh” | at now + 1 week
```
4. Ejecutar el script "~/miscript.sh" cada 4 horas durante los diez primeros días de cada mes.
```bash
Crontab -e
0 */4 1-10 * * ~/miscript.sh
```
5. Ejecutar el script "~/miscript.sh" sólo cuando la carga baje de 1.5
```bash
batch -f ~/miscript.sh
```
6. Mostrar que las ejecuciones están programadas y esperando para ejecutarse
```bash
atq
```
7. Eliminar/comentar todas las ejecuciones programadas
```bash
atrm id_tarea
```


## MS Windows
Crear un programa batch que muestre un mensaje y la fecha y hora y ejecutar este fichero según lo indicado (se debe añadir la salida en un fichero de texto):
```cmd
@echo off

set "fecha=%date%"

set “hora=%time%"

echo Mensaje de ejemplo - Fecha: %fecha% - Hora: %hora% >> fecha_hora.txt
```

1. El próximo lunes a las 12:50
```cmd
schtasks /create /“tarea lunes” /tr “C:\ruta\miscript.bat” /sc once /d MON /st 12:50
```

2. Todos los días a las 16:30
```cmd
schtasks /create /“tarea diaria” /tr “C:\ruta\miscript.bat” /sc daily /st
16:30
```

3. Todas las semanas a las 23:00
```cmd
schtasks /create /“tarea semanal” /tr “C:\ruta\miscript.bat” /sc weekly /
st 23:50
```

4. Todos los meses a las 11:00
```cmd
schtasks /create /“tarea mensual” /tr “C:\ruta\miscript.bat” /sc
monthly/st 11:00
```

5. Cuando el sistema tenga baja carga
```cmd
schtasks /create /“tarea cargabaja” /tr “C:\ruta\miscript.bat” /sc onidle
```

6. Los lunes, miércoles y viernes a las 20:00
```cmd
schtasks /create /“tarea l-m-v” /tr “C:\ruta\miscript.bat” /sc weekly /d
MON,WED,FRI /st 20:00
```

7. Mañana a las 12:00, y repetir la ejecución 5 veces cada 10 minutos
```cmd
schtasks /create /“tarea rep” /tr “C:\ruta\miscript.bat” /sc once /sd
tomorrow /st 12:00 et/ 6:00 /mo 10 minute /ri 5
```


# HOJA DE EJERCICIOS DE USUARIOS Y GRUPOS
## GNU/Linux 
Resuelve los siguientes apartados en la máquina virtual de GNU/Linux. Cuando se pregunte por qué comando se utilizaría, debes indicar el comando completo, con las opciones y parámetros necesarios para que funcione:

1. Muestra todos los usuarios de tu máquina virtual. ¿Dónde está esa información? ¿Qué datos guarda el sistema sobre sus usuarios y cómo se organizan?
```bash
cat /etc/passwd
```
En este archivo se encuentra toda la información de los usuarios. Cada línea es un usuario, y en esta línea se encuentra la siguiente información: Cuenta (nombre de usuario) : Contraseña : UID (ID de usuario) : GID (ID de grupo) : GECOS (campo opcional con propósitos informativos) : Directorio (directorio principal o home del usuario) : shell (ruta al shell predeterminado, campo opcional)

2. ¿Por qué hay tantos usuarios? De todos ellos, ¿cuáles realmente pueden abrir una consola de comandos? ¿cuáles podrían inciar una sesión con una contraseña válida? ¿Cómo sabes estos datos? ¿Por qué crees que es así?
```bash

```

3. Fíjate en el UID de los usuarios. ¿Ves alguna diferencia entre los usuarios con UID < 1000 y los que tiene un UID >= 1000? ¿Por qué es así?
```bash

```

4. Muestra todos los grupos de tu máquina virtual. ¿Dónde está esa información? ¿Qué datos guarda el sistema sobre sus grupos y cómo se organizan?
```bash

```

5. ¿Por qué hay tantos grupos? Intenta buscar información sobre qué funciones tienen los diferentes grupos de tu sistema, en los apuntes hay un enlace con algo de información.
```bash

```

6. ¿Cómo comprobarías si un usuario existe ya en el sistema? ¿Y un grupo?
```bash

```

7. Crea el usuario "test01" de forma que su home sea /home/test01 (se deben copiar la configuración básica de /etc/skel) y su shell sea /bin/bash.
```bash
sudo useradd -m -d /home/test01 -s /bin/bash test01
```

8. Intenta abrir una sesión como "test01" una vez creado... ¿puedes? ¿Por qué? ¿Cómo lo arreglarías?

No se puede porque no se le ha asignado una contraseña. Para ello se usa el comando: 
```bash
sudo passwd test01
```

9. El usuario "test01", ¿qué grupo principal tiene? Cámbialo para que sea su grupo principal sea "tests".
```bash
sudo usermod -g tests test01
```

10. Borra el grupo principal antiguo de test01, ¿puedes eliminarlo? ¿Por qué?
```bash
sudo groupdel test01
```
Sí se puede, porque se permite eliminar si el grupo no está siendo utilizado por ningún usuario como grupo principal o secundario.

11. Borra el grupo "tests", ¿puedes eliminarlo? ¿Por qué?

No, porque test01 está usando ese grupo.

12. Asigna algunos grupos secundarios a "test01". Indica para qué sirve cada uno de los grupos creados

Para agregar a grupos secundarios se usa el comando usermod:
```bash
 sudo usermod -G grupo1,grupo2 test01
```
Estos grupos son creados con:
```bash
sudo groupadd group1
```

13. Asigna algunos grupos más secundarios a "test01", SIN borrar los que ya tenía
```bash
sudo usermod -aG nuevogrupo1 test01 
```
Se usa la -a para no eliminar los que ya tenía.

14. Elimina algunos grupos secundarios del usuario test01
```bash
sudo gpasswd -d test01 grupoaeliminar
```

15. Bloquea al usuario test01. Luego intenta abrir una sesión... ¿puedes? ¿Por qué?
```bash
sudo passwd -l test01
```
No, porque con este comando hace que se caduque la contraseña.

16. Desbloquea al usuario test01. ¿Se ha perdido algo de su información?
```bash
sudo passwd -u test01
```
No debería haber perdido información

17. Cambia la información de test01 indicando su nombre completo, oficina, teléfono, etc.
```bash
sudo chfn test01
```
Este comando te da opciones de escribir o modificar todos esos datos.

18. Cambia la shell de test01 a una que no permita ejecutar comandos
```bash
sudo chsh -s /bin/false test01
```

19. Vuelve a dejarle a test01 su shell original
```bash
sudo chsh -s /bin/bash test01
```

20. Añade restricciones al usuario test01 de forma que tenga que cambiar la contraseña cada 15 días y que le avisen 3 días antes, dándole 2 días de margen para poder cambiar una contraseña caducada sin que se bloquee su cuenta. Además, la cuenta quedará deshabilitada el 30 de junio.
```bash
sudo chage -M 15 -W 3 -I 2 -E 2023-06-30 test01
```
**chage**: Es el comando utilizado para modificar la configuración de la contraseña de un usuario. <br>
**-M 15**: Establece el máximo número de días antes de que la contraseña del usuario expire. En este caso, se establece en 15 días, lo que significa que el usuario "test01" tendrá que cambiar su contraseña cada 15 días. <br>
**-W 3**: Establece el número de días de advertencia antes de que la contraseña expire. En este caso, se establece en 3 días, lo que significa que el usuario "test01" recibirá una advertencia 3 días antes de que su contraseña expire. <br>
**-I 2**: Establece el número de días de inactividad antes de que la cuenta del usuario se desactive automáticamente. En este caso, se establece en 2 días, lo que significa que si el usuario "test01" no inicia sesión durante 2 días, su cuenta se desactivará automáticamente. <br>
**-E 2023-06-30**: Establece la fecha de caducidad para la cuenta del usuario. En este caso, se establece en el 30 de junio de 2023, lo que significa que la cuenta del usuario "test01" se desactivará automáticamente en esa fecha.

21. Elimina el usuario test01 con todo el contenido en su espacio personal. Ten en cuenta que test01 podría seguir conectado.
```bash
sudo userdel -rf test01
```

22. ¿Qué pasaría si test01 siguiera conectado en el momento que se elimina su cuenta? ¿Podría seguir usando el equipo con normalidad? ¿Cómo harías para cerrar inmediatamente todos sus procesos que estuvieran aún en ejecución?
```bash
sudo pkill -u test01 -9
```


## MS Windows

1. ¿Por qué MS Windows distingue entre usuarios/grupos locales y globales?
```cmd

```

2. Muestra todos los usuarios locales de tu máquina virtual. ¿Cuál es la función de cada usuario?
```cmd

```

3. Muestra información detallada del usuario que estás usando ahora mismo. ¿Qué significa cada línea? ¿A qué grupos perteneces?
```cmd

```

4. Muestra todos los grupos locales de tu máquina virtual. ¿Qué función tiene cada grupo (busca unos cuantos)?
```cmd

```

5. Muestra información detallada del grupo "Usuarios". ¿Quién pertenece a este grupo? Repite la operación para el grupo de "Administradores"
```cmd

```

6. Crea un usuario test01 SIN indicar contraseña
```cmd

```

7. Crea un usuario test02 indicando la contraseña en el propio comando
```cmd

```

8. Crea un usuario test03 y solicita que se indique la contraseña por teclado, sin mostrarla
```cmd

```

9. Prueba a abrir sesión con los usuarios creados. ¿Puedes acceder con todos? Si no puedes acceder con alguno(s), indica cuál es el problema y soluciónalo.
```cmd

```

10. ¿A qué grupo(s) local(es) pertenecen los usuarios creados?
```cmd

```

11. Crea un grupo local llamado Informática. Añade los tres usuarios anteriores a ese grupo y muestra la lista de usuarios del grupo para ver que así es.
```cmd

```

12. Haz que test03 sea administrador.
```cmd

```

13. Haz que la cuenta de test01 caduque al final de 2023 y que tenga que cambiar la contraseña la próxima vez que inicie sesión.
```cmd

```

14. Desactiva al usuario test02.
```cmd

```

15. Haz que el usuario test03 NO pueda cambiar su contraseña, y que esta NO sea obligatoria.
```cmd

```

16. Prueba a iniciar de nuevo sesión con cada usuario... ¿qué sucede?
```cmd

```

17. Indica el nombre completo del usuario test01 (invéntate uno) y añade comentarios a su cuenta.
```cmd

```

18. Elimina al usuario test03 del grupo local de "Informática".
```cmd

```

19. Muestra la configuración global de las cuentas (longitud mínima de las contraseñas, duración, bloqueos, etc.).
```cmd

```

20. Modifica la configuración global para que todas las contraseñas tengan uan longitud mínima de 6 caracteres, se tengan que cambiar cada mes y no se puedan usar las últimas 3 contraseñas. 
```cmd

```

21. Elimina el grupo local de "Informática". Muestra todos los grupos locales para asegurate de que está eliminado.
```cmd

```

22. Elimina todos los usuarios creados en estos ejercicios. Muestra todos los usuarios locales para asegurarte de que han sido eliminados.
```cmd

```