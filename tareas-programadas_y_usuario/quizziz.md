# PROGRAMACIÓN DE TAREAS

# USUARIOS Y GRUPOS
1. En GNU/Linux, ¿dónde se almacenan los datos de los usuarios?

a) /etc/users <br> b) /etc/passwd **LA CORRECTA** <br> c) /etc/shadow <br> d) /etc/group

2. ¿Cuál de las siguientes afirmaciones sobre /etc/passwd es CIERTA en GNU/Linux?

a) Guarda las contraseñas de los usuarios <br> b) Guarda el grupo primario de los usuarios <br> c) Guarda los grupos secundarios de los usuarios <br> d) Guarda la caducidad y restricciones de las contraseñas de los usuarios

3. Al crear un usuario con useradd, si no indico su grupo primario... ¿qué sucede?

a) El usuario se crea sin grupo primario <br> b) Se crea automáticamente un grupo que se llame igual que el usuario y se le asigna como primario **LA CORRECTA** <br> c) Se le asigna como grupo primario el grupo por defecto <br> d) El comando da un error, no se puede crear un usuario sin indicar su grupo primario

4. Cuando creo a un usuario normal con useradd, ¿qué grupo de opciones NO deberíamos usar?

a) -d, -m <br> b) -g, -G <br> c) -h, -r **LA CORRECTA** <br> d) -S, -k

5. En GNU/Linux, ¿cómo cambio los privilegios de un usuario, por ejemplo para que pueda usar dispositivos y / o servicios, como impresoras, scanners, etc.?

a) En la aplicación de configuración de cada dispositivo <br> b) Creando un enlace simbólico a cada dispositivo <br> c) No se puede, sólo el root puede utilizar esos dispositivos <br> d) Añadiendo el grupo secundario adecuado al usuario **LA CORRECTA**

6. En GNU/Linux, si quiero cambiar la shell de arranque de un usuario, ¿cuál debo usar?

a) usermod -c <br> b) usermod -g <br> c) usermod -s <br> d) usermod -L

7. En GNU/Linux, ¿cuál es correcto?

a) chfn me permite cambiar la shell de inicio de un usuario <br> b) chage me permite cambiar la caducidad de la contraseña **LA CORRECTA** <br> c) chown me permite cambiar la información del usuario (nombre, oficina, etc.) <br> d) chsh me permite cambiar el usuario propietario de ficheros y directorios

8. En un script queremos cambiar la contraseña del usuario "user1", de forma que la nueva contraseña sea "r3Loj". ¿Cómo lo haríamos?

a) sudo passwd r3Loj <br> b) sudo chpasswd <<< "user1:r3Loj" **La CORRECTA** <br> c) sudo usermod -p r3Loj user1 <br> d) No es posible cambiar contraseñas en scripts

9. Podemos usar el comando passwd para bloquear el acceso a un usuario. ¿Cuál de las siguientes opciones es FALSA?

a) sudo passwd -I user: bloquea al usuario <br> b) sudo passwd -u user: desbloquea al usuario <br> c) sudo passwd -S user: muestra si el usuario estaba bloqueado o no <br> d) sudo passwd -C user: cambia el estado del bloqueo (desbloquea si estaba bloqueado y viceversa)

10. En GNU/Linux, ¿qué estoy haciendo con el siguiente comando?getent passwd user1

a) Cambiando la contraseña a user1 <br> b) Comprobando si user1 existe y mostrando su información <br> c) Bloqueando al usuario user1 <br> d) Eliminando al usuario user1

11. Quiero eliminar el usuario usr1 que tiene una sesión abierta, borrando todo el contenido de su directorio personal y finalizando inmediatamente todos sus procesos, ¿cómo lo hago?

a) sudo userdel -r -f usr 1 && <br> b) sudo pkill -u usr1 -9 <br> c) sudo remove usr1 && <br> d) sudo xkill usr1 <br> e) sudo userdel usr1

12. En GNU/Linux, ¿qué estoy haciendo con el siguiente comando? `sudo gpasswd -d AB`

a) Cambiando las contraseñas de los usuarios A y B <br> b) Eliminando los usuarios A y B <br> c) Quitando el grupo secundario B del usuario A **LA CORRECTA** <br> d) Quitando el bloqueo de los usuarios A y B

13. En GNU/Linux, ¿cuál es FALSA?

a) `SU -` abrir la sesión como otro usuario <br> b) `who` Ver usuarios conectados <br> c) `last` Mostrar únicamente el último usuario conectado **LA CORRECTA** <br> d) `id` Ver el nombre e id del usuario y sus grupos

14. Cómo muestro la información del usuario user1 en MS Windows

a) net user user1 <br> b) net show user1 <br> c) net info user1 <br> d) net user1

15. En MS Windows, ¿qué descripción del comando es FALSA?

a) `net user` Listar todos los usuarios locales <br> b) `net group A B/add`  Añadir al usuario B en el grupo local A <br> c) `net user A /delete` Eliminar al usuario A **LA CORRECTA** <br> d) `net user A^ * / add` Añadir al usuario A, solicitando su contraseña

16. En MS Windows, ¿cómo veo la información sobre las restricciones de las contraseñas de los usuarios? (caducidad, longitud mínima, historial de contraseñas, etc.)? DOS PALABRAS

Respuesta: `net accounts`