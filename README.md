## Ubuntu Command List

##### Gestionar archivos y directorios

```sh
cd /home : # Ir al directorio /home.
cd .. : # Ir al directorio anterior.
pwd : # Mostrar ruta.

sudo su : # Acceder como root.

ls : # Listar contenido.
ls -lh : # Listar contenido + permisos (h tamaño del archivo).
ls -al : # Listar contenido + permisos + ocultos.
ls -tl : #
ls *.json : #

mkdir dir1 : # Crear directorio.
mkdir -p /var/www/html/nombredirectorio.com : # Crear directorio (-p: crea los directorios padres en caso necesario).

rm -fr /var/www/posadawebsite/ : # Eliminar directorio (forzado, recursivo).
rm file1 : # Eliminar archivo.
rm -f file1 : # Eliminar archivo forzado.
rm -rf dir1 : # Eliminar directorio recursivo y forzado.

cp file1 destino/ : # Copiar archivo.
cp -ra directorio/ ruta_de_destino/nombre_copia : # Copiar directorio completo (Recursivo y con los permiso).

scp -r /home/mario/carpeta /home/usr : # Copiar directorio completo.
scp archivo.txt /home/usr : # Copiar archivo a directorio.

mv file1 /destino : # Mover archivo.
mv directorio directorio_renombrado : # Renombrar directorio.

ctrl + c  : # Frenar ejecución.
clear : # Limpiar pantalla.
history : # Historial de comandos ejecutados.
```

##### Encontrar archivos:

```sh
find /home/nombre_usuario/Escritorio -name “*.jpg” : # Busca todos los archivos del Escritorio con extensión .jpg.  
find . -name “*hola*” : # Busca todos los archivos que contienen la palabra “hola” en el nombre.  
find . ! -name “*hola*” : # Busca todos los archivos que NO contienen la palabra “hola” en el nombre.  
find . -name “*hola*” -a “*caracola*” : # Busca todos los archivos que contienen la palabra “hola” y “caracola” en el nombre.  
find . -name “*hola*” -o “*caracola*” : # Busca todos los archivos que contienen la palabra “hola” o “caracola” en el nombre.  
find . -iname “*hola*” : # Busca todos los archivos que contienen la palabra “hola” en el nombre tanto en mayúsculas como en minúsculas.   
find . -user nombre_usuario : # Busca todos los archivos de un usuario determinado (nombre_usuario).  
find . -size +1000k : # Busca todos los archivos de tamaño mayor a 1000 kb.  
find . -amin -30 : # Busca todos los archivos a los que se accedió en los últimos 30 minutos.  
find . -atime 365 : # Busca todos los archivos a los que se accedió hace un año exactamente.  
find . -name “*.jpg” -exec rm {} \; : # Busca todos los archivos con extensión .jpg y los borra.  
find nombre_directorio -name nombre_archivo > /home/nombre_usuario/Escritorio/Lista.txt : # Para guardar el resultado de la búsqueda en un archivo de texto.  

find /root/ -type f -printf "%T@ %p\n" | sort -nr | head -15 : # Buscar los 15 archivos modificados.

grep -lir "linux" "/media/cosas" : # Buscar archivos que contengan la frase “linux” dentro la carpeta /media/cosas. El parámetro -l le indica que imprima los nombres de archivos en los que se encuentre el texto solicitado. El parámetro -i, que ignore las mayúsculas y minúsculas. El parámetro -r, que busque en forma recursiva dentro de la ruta indicada.
grep linux /cosas/*.pdf : # Buscar en un determinado archivo la frase linux.
grep Aug /var/log/messages : # Buscar palabras “Aug” en el fichero /var/log/messages.
grep Aug *. * : # Busar palabras "Aug" en todos los ficheros.

grep danger ejemplo.txt> salida.txt : # Redirigir la salida a un archivo.
```

##### Ver el contenido de un fichero:

```sh
cat /etc/crontab : # Ver crontab.
tailf /var/log/apache2/access.log : # Ver cambios tiempo real.
tailf /var/log/apache2/error.log : # Ver cambios tiempo real.

tail error.log : # Por defecto ver las ultimas 10 lineas. 
tail -n 100 error.log : # Ver las ultimas 100 lineas.
tail -f myfile.txt : # Ver las ultimas 10 lineas y monitorea los cambios.

tail -f error.log | grep error : # filtrar resultados con palabra error.
```

##### Command MySQL:

```sh
mysql -u jrivera -p; : # Abrir MySQL.  
mysql -u jrivera -p bd; : # Abrir MySQL.  
mysql -h host -u jrivera -p bd; : # Abrir MySQL.  
use nombre_bd;  : # Abrir bd.  
describe nombre_tabla; : # Estructura tabla.  
create database nombre_bd; : # Crear bd.  
show databases; : # Ver bd.   
select database(); : # Ver bd en uso.  
show full tables from mi_base_de_datos; : # Ver tablas.  
show tables; : # Ver tablas.  
show grants; : # Ver Permisos Usuario.  
select .. \G; : # Consulta SQL, consulta mas visible.  
drop database nombre_bd; : # Eliminar BD.  
show procedure status \G; : # Ver procedimientos almacenados(por descripcion).  
show create procedure nombre_procedimiento; : # Ver procedimientos almacenados (por codigo).  
show create view view_name; : # Ver vista.  


sudo tar -zcvf /destino/nombre_archivo.tar.gz /origen_directorio/ : # Comprimir.  
mysqldump -u db_username -h db_host -p db_name table_name > /home/name/db_nanme.sql : # Backup.  
scp usuario@ip:/carpeta_origen/db_name.sql /carpeta_destino/db_name.sql : # Secure Copy.  
sudo tar -xzvf /carpeta_origen/name.tar.gz /carpeta_destino/name/ : # Descomprimir.  
mysql -u db_username -p db_name < /home/name/db_name.sql : # Restaurar.  
mysql -u db_username -p db_name < /home/name/script.sql : # Ejecutar archivo sql.  


1. CREATE USER 'nombre_usuario'@'localhost' IDENTIFIED BY 'tu_contrasena'; : # Crear un usuario nuevo.  
2. GRANT ALL PRIVILEGES ON * . * TO 'nombre_usuario'@'localhost'; : # Crear permisos para el usuario (el asterisco representa base de datos y la tabla).  
3. FLUSH PRIVILEGES; : # Refrescar todos los privilegios.  
4. DROP USER 'nombre_usuario'@'localhost'’; : # Eliminar un usuario.  
```

##### Espacio en disco:

```sh
df -h : # Muestra el uso de espacio de discos duros o particiones.
df -Th / : # mismo de arriba.
du -h --max-depth=1 -x : # Muestra el uso de espacio de archivos y directorios.
du -csh / : # mismo de arriba.
du -d1 -h /home | sort -h : # mismo de arriba.

du -hs * | sort -nr | head -5
du -h | sort -hr | head
```

##### Permisos en ficheros:

```sh
create user 'user'@'localhost' identified by 'password'; : # Crear nuevo usuario.
drop user 'user'@'localhost'; : # Eliminar usuario.

# Se ejecuta a nivel de base de datos.
GRANT ALL PRIVILEGES on base1.* to 'pepe'@'%' identified by 'pepe1234'; : # Permitir el acceso al usuario "pepe" a la base de datos "base1" desde el host remoto "192.168.1.101" utilizando la contraseña "pepe1234"
GRANT ALL PRIVILEGES ON mydb.* TO 'myuser'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES; : # Una vez ejecutado lo anterior se debera ejecutar.
```

##### Información del Servidor:

```sh
top : # Procesos de la CPU en tiempo real.
top -u jrivera : # Mostrar unicamente de un usuario.
ps : # Procesos activo.
ps -u nombre_usuario : # Procesos activos del usuario.
ps aux : # muestra todos los procesos del sistema.
ps aux | grep bash : # filtrar resultados de procesos bash.

kill id_proceso : # Termina procesos.

last : # Ultimos usuarios logueados.
users : # Muestra los usuario logueados.
who : # Muestra los usuario logueado con detalle.

whoami : # Muestra el usuario actual.

lsb_release -a : # Version del Servidor.

netstat -lntu : # Puertos Ubuntu.
-l : # Permite ver exclusivamente los puertos de escucha.
-p : # Muestra las conexiones para el protocolo especificado que puede ser TCP o UDP.
-u : # Lista todos los puertos UDP.
-t : # Lista todos los puertos TCP.
-o : # Muestra los timers.
-n : # Muestra el numero de puerto.
-a : # Visualiza todas las conexiones activas del sistema.
```

#### GIT:

##### Getting & Creating Projects

```sh
git init : # Crear un nuevo repositorio.
git clone /path/to/repository : # Crea una copia local del repositorio.
git clone username@host:/path/to/repository : # Si utilizas un servidor remoto.
```

##### Basic

```sh
git status : # Estado del repositorio.
git add nombre_archivo : # Registrar cambios de un archivo.
git add . : # Agregando todos los cambios de archivos en un directorio.
git add -A : # Registrar cambios de todos los archivos.
git commit -m "Commit message" : # Hace commit.
git rm -r [file-name.txt] : # Eliminar un archivo o directorio.
 ```
 
##### Branching & Merging

```sh
git branch : # Listar branches (local).
git branch -a : # Listar branches (local y remoto).
git branch [branch name] : # Crear un nuevo branch.
git branch -d [branch name] : # Eliminar un branch.
git push origin --delete [branch name] : # Elimina un branch remoto.
git checkout -b [branch name] : # Crea un nuevo branch y me cambio a ella.
git checkout -b [branch name] origin/[branch name] : # Clona un branch remota y me cambia a ella.
git checkout [branch name] : # Cambiar a un branch.
git checkout - : # Switch to the branch last checked out.
git checkout -- [file-name.txt] : # Descartar cambios a un archivo.
git merge [branch name] : # Fusionar una rama en la rama activa.
git merge [source branch] [target branch] : # Fusionar una rama en una rama objetivo.
git stash : # Stash changes in a dirty working directory.
git stash clear : # Remove all stashed entries.
 ```
 
##### Sharing & Updating Projects

```sh
git push origin <branch> : # Subir (push) la rama a tu repositorio remoto.
git pull : # Actualizar tu repositorio local al commit más nuevo.
git pull origin NombreDeBranch : # Actualiza nuestro branch local, desde un branch remoto que indicamos en el comando.
git merge <branch> : # Para fusionar otra rama a tu rama activa.
git remote -v : # Muestra los repositorios remotos que están configurados actualmente.
git remote add origin <server> : # Conectar tu repositorio local a un repositorio remoto.
 ```
 
##### Inspection & Comparison

```sh
git log : # Ver cambios.
git log --summary : # Ver cambios detallados.
git show : # Muestra los cambios realizados en el commit.
git diff [source branch] [target branch] : # Vista previa de cambios antes de fusionar.

git config : # Establecer la configuracion.
git config --get remote.origin : # Obtener la url de nuestro repositorio.
git config --local -l : # Conocer todos los datos de la configuración local de Git en nuestro proyecto.
git config --global -l : # Conocer todos los datos de la configuración global de Git en nuestro proyecto.
git config --global user.name "Sam Smith" : # Configurar name que será identificado al hacer el commits.
git config --global user.email sam@example.com : # Configurar email que será identificado al hacer el commits.
git config --global color.ui true : # Aplicar color al git.
 ```
