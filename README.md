## Ubuntu Command List

##### Gestionar archivos y directorios

```sh
cd /home : # Ir al directorio /home.
cd .. : # Ir al directorio anterior.
pwd : # Mostrar ruta.
&& : # Concatenar

document.designMode = "on"

sudo su : # Acceder como root.
su : # Acceder como root.
su nombre_usuario : # Cambiar de usuario.

sudo passwd username : # Cambiar Password. 

ssh direccion_ip : # Acceder por ssh.
ssh direccion_ip -l usuario : # Acceder por ssh con usuario.
ssh usuario@direccion_ip : # Acceder por ssh con usuario.

ls : # Listar contenido.

-h	Imprime el tamaño.
-l	Imprime en formato de listado largo.
-t	Ordena acorde a la fecha y hora de modificación.
-S	Ordena acorde al tamaño.
-a	Imprime archivos ocultos.
--color	Colorea la salida.

ls *.json : # Listar los json.

ls -d *transporte* : # Lista los que tengan ese nombre.
ls -la | grep node : # Lista los que tengan ese nombre.

mkdir dir1 : # Crear directorio.
mkdir -p /var/www/html/nombredirectorio.com : # Crear directorio (-p: crea los directorios padres en caso necesario).

rm file : # Eliminar archivo.
rm -f file : # Eliminar archivo forzado.
rm -rf directorio : # Eliminar directorio recursivo y forzado.

cp file1 destino/ : # Copiar archivo.
cp -ra /origen_directorio/files /destino_directorio/files : # Copiar directorio completo (Recursivo y con los permiso).
cp a.txt b.txt directorio : # Copiar múltiples archivos.

scp -r /home/mario/carpeta /home/usr : # Copiar directorio completo.
scp archivo.txt /home/usr : # Copiar archivo a directorio.

mv file1 /destino : # Mover archivo.
mv directorio directorio_renombrado : # Renombrar directorio.

ctrl + c  : # Frenar ejecución.
clear : # Limpiar pantalla.
history : # Historial de comandos ejecutados.

sudo vi index.html : # Crear/Ver Archivo. [insert, esc, :q (Salir si no hubo cambios), :q! (Salir sin guardar cambios), :w (guardar), :wq (guarda y sale de vi)].

head -n 5 archivo.sql : # ver cabecera de un archivo.

touch /home/index.html : # Crear archivo.
echo "<?php phpinfo();?>" > /home/index.php : # Crear archivo con contenido.

# Encadenar número de comandos ( | ). Ej: ls -a | grep _
# Escribir en un archivo ( > ). Ej: ls -a | grep _ > underscores.txt

which [name-of-the-program] : # Locate the binary for a program.

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

find / -type f -mtime -3 : # Ver últimos archivos modificados desde hace 3 días.
find / -type f -mmin -30 : # Ver últimos archivos modificados desde hace 30 minutos.
find / -type f -mtime -5 ! -mtime -3 : # Ver últimos archivos hace mas de 5 días pero no menos de 3 días.
find / -type f -newermt "2017-12-27" : # Ver últimos archivos modificados a partir de cierta fecha.
find / -type f -mmin -120 -ls : # Ver últimos archivos modificados hace dos horas mostrando permisos.

find /root/ -type f -printf "%T@ %p\n" | sort -nr | head -15 : # Buscar los 15 archivos modificados.

grep -lir "linux" "/media/cosas" : # Buscar archivos que contengan la frase “linux” dentro la carpeta /media/cosas. El parámetro -l le indica que imprima los nombres de archivos en los que se encuentre el texto solicitado. El parámetro -i, que ignore las mayúsculas y minúsculas. El parámetro -r, que busque en forma recursiva dentro de la ruta indicada.
grep linux /cosas/*.pdf : # Buscar en un determinado archivo la frase linux.

grep -c ruby README.md : # Recuento de ocurrencias (-c).
grep -n Ruby README.md : # Visualización de números de línea (-n).
grep rails file1.md file2.md : # Búsqueda de múltiples archivos.
grep -R "Read" . : # Búsqueda recursiva (-R).

grep danger ejemplo.txt> salida.txt : # Redirigir la salida a un archivo.
```

##### Ver el contenido de un fichero:

```sh
cat /etc/crontab : # Ver crontab.
cat -b big_file.txt : # Mostrar números de línea.

sudo vi /etc/crontab : # Editar crontab.
 
tailf /var/log/apache2/access.log : # Ver cambios tiempo real.
tailf /var/log/apache2/error.log : # Ver cambios tiempo real.

tail error.log : # Por defecto ver las ultimas 10 lineas. 
tail -n 100 error.log : # Ver las ultimas 100 lineas.
tail -f myfile.txt : # Ver las ultimas 10 lineas y monitorea los cambios.

tail -f error.log | grep error : # filtrar resultados con palabra error.

diff texto1 texto2 : # Comparar Archivos.
```

##### Comprimir / Descomprimir:

```sh
sudo unzip archivo.zip /carpeta_destino/ : # descomprimir archivos en formato .zip
sudo unrar -x archivo.rar /carpeta_destino/ : # descomprimir archivos en formato .rar
sudo tar -zxvf archivo.tar.gz /carpeta_destino/ : # descomprimir archivos en formato .tar
sudo gzip -d archivo.zip /carpeta_destino/ : # descomprimir archivos en formato .gzip

sudo zip -r directorio-comprimido.zip /home/usuario : # comprimir un directorio completo incluyendo subdirectorios en formato .zip
sudo rar -a archivo.rar ficheros : # comprimir archivos en formato .rar

sudo tar -czvf empaquetado.tar.gz /carpeta/a/empaquetar/ : # comprimir en formato .tar
sudo tar -czvf empaquetado.tar.gz * : # comprimir en formato .tar todos los archivos dentro de directorio actual incluidos subdirectorios.

sudo tar -czvf paquete.tar.gz archivo1 archivo2 : # Comprimir varios archivos
```

##### Command MySQL:

```sh
mysql -u name_user -p; : # Abrir MySQL.
mysql -u name_user -p name_bd; : # Abrir MySQL.
mysql -u name_user -p password name_bd -h host -P port : # Abrir MySQL.

EXPLAIN EXTENDED SELECT * FROM mi_tabla; : # Obtener información sobre el plan de ejecución.

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

ALTER TABLE table_name ADD INDEX index_name (column_name); : # Crear Indices.

show indexes from table_name; : # Ver Indices.
show indexes from table_name in database_name; : # Ver Indices.

sudo tar -zcvf /destino/nombre_archivo.tar.gz /origen_directorio/ : # Comprimir.

mysqldump -u db_username -h db_host -p db_name t1 t2 t3 > /home/name/db_nanme.sql : # Backup.

scp usuario@ip:/carpeta_origen/db_name.sql /carpeta_destino/db_name.sql : # Secure Copy.
sudo tar -xzvf /carpeta_origen/name.tar.gz /carpeta_destino/name/ : # Descomprimir.
mysql -u db_username -p db_name < /home/name/db_name.sql : # Restaurar.
mysql -u db_username -p db_name < /home/name/script.sql : # Ejecutar archivo sql.

mysqldump -u root -p bd_name | gzip -c > /name/bd_name.sql.gz : # Backup y comprime.

gunzip -c /name/bd_name.sql.gz | mysql -u root -p bd_name : # Descomprimir y restaurar. 

gunzip /name/bd_name.sql.gz : # Descomprimir sql.gz.

LOAD DATA INFILE '/tmp/name_file' INTO TABLE name_table FIELDS TERMINATED BY ';' ENCLOSED BY '"' LINES TERMINATED BY '\r\n'; : # Importar archivo a BD.

mysqladmin -u root -p processlist : # Ver todos los procesos que están corriendo del servidor MySQL.
mysqladmin -u root -p kill 5 : # Eliminar un proceso del cliente MySQL.
```

##### Exportar consulta MySQL

```sh
select * from nombre_tabla INTO OUTFILE '/tmp/nombre_tabla.csv ' FIELDS TERMINATED BY ';' ENCLOSED BY '\"' LINES TERMINATED BY '\r\n';

#En caso que responda el error
#The MySQL server is running with the --secure-file-priv option so it cannot execute this statement
#Correr SHOW VARIABLES LIKE "secure_file_priv"; para saber la ubicacion y usar esa ubicacion en la variable OUTFILE.

mysql -u nombre_user -p nombre_bd -e "select * from nombre_tabla" > /tmp/nombre_tabla.txt
```

##### Usuarios y privilegios en bases de datos MySQL:

```sh
select * from mysql.user; : # Listado de usuarios con sus permisos.
show grants for nombre_usuario; : # Listar privilegios de usuario a las base de datos que tiene acceso.
SHOW GRANTS; : # Listar privilegios para el usuario conectado.
SHOW GRANTS FOR CURRENT_USER; : # Listar privilegios para el usuario conectado.
SHOW GRANTS FOR 'user'@'host'; : # Listar privilegios para el usuario.
select * from mysql.db where user='nombre_usuario'; : # Listado de BD que tiene asigando un usuario.
select user,host,select_priv from mysql.db where db='nombre_basedatos'; : # Listado de usuarios que tienen acceso a una determinada base de datos de modo solo conuslta. (Y => yes, N => no)
select user,host,insert_priv,update_priv,delete_priv from mysql.db where db='nombre_basedatos'; : # Listado de usuarios que tienen acceso a una determinada base de datos de modo edición (insertar, modificar y eliminar filas). (Y => yes, N => no)

drop user 'user'@'localhost'; : # Eliminar usuario.

CREATE USER 'root'@'%' IDENTIFIED BY 'password'; : # Crear nuevo usuario.
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION; : # Permitir el acceso al usuario "root" a todas las bd desde cualquier host

GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP ON mydb.* TO 'user'@'localhost';

FLUSH PRIVILEGES; : # Refrescar todos los privilegios.


ALTER USER 'nombre_usuario'@'%' IDENTIFIED WITH mysql_native_password BY 'el_pass'; : # Se usa para Sequelize, ya que utiliza la vieja forma de autenticacion
flush privileges;

```

##### Command MongoDB:

```sh

mongo : # Comenzar a utilizarlo.

mongo --eval 'db.runCommand({ connectionStatus: 1 })' : # Versión, la dirección del servidor y el puerto.

sudo service mongodb status : # Ver estado de Mongo.
sudo service mongodb start : # Iniciar Mongo.
sudo service mongodb stop : # Detener Mongo.
sudo service mongodb restart : # Reiniciar Mongo.

sudo systemctl enable mongodb : # Habilitar el inicio automático de Mongo.
sudo systemctl disable mongodb : # DesHabilitar el inicio automático de Mongo.

```

##### Espacio en disco:

```sh
df -h : # Muestra el uso de espacio de discos duros o particiones.
df -Th / : # mismo de arriba.
du -h --max-depth=1 -x : # Muestra el uso de espacio de archivos y directorios.
du -csh / : # mismo de arriba.
du -d1 -h /home | sort -h : # mismo de arriba.

du -sh * : # Muestra peso de los directorios
du -sh * | sort -nr | head -5

du -h | sort -hr | head
du -h -d 1 /home --threshold=10M | sort -h

```

##### Permisos en ficheros:

```sh
sudo chown usuario.www-data -R /directorio/ : # Cambiar propietario al directorio.
sudo chmod -R 755 /directorio : # Cambiar permisos al directorio.
sudo chmod +x file.php : # Dar permiso de ejecucion al archivo.
```

##### Información del Servidor:

```sh
top : # Procesos de la CPU en tiempo real.
top -u jrivera : # Mostrar unicamente de un usuario.
htop : # Procesos de la CPU en tiempo real.
ps : # Procesos activo.
ps -u nombre_usuario : # Procesos activos del usuario.
ps aux : # muestra todos los procesos del sistema.
ps aux | grep bash : # filtrar resultados de procesos bash.

sudo lsof -i -P -n | grep puerto
sudo lsof -i:3339 

ps puerto : # Te indica el pach
ps -ef | grep 18069 : # Te indica el pach

free : # Memoria utilizada / libre.
free -h : # Memoria utilizada / libre.

which node
whereis node

history | grep algo : # Muestra los comandos ejecutados

kill id_proceso : # Termina procesos.

w : # Usuarios conectados.
who : # Usuarios conectados.
users : # Usuarios conectados.
last : # Ultimos usuarios conectados.
lastlog : # Listados de todos los usuarios con la fecha de ultimo ingreso.

whoami : # Muestra el usuario actual.

history : # Muestra los comandos que hemos utilizado.
history | grep "comando que buscamos" : # filtrando por un comando.

id : # Muestra información relativa a nuestro usuario.

lsb_release -a : # Version del Servidor.

sudo netstat -plnut : # Puertos Ubuntu.
-l : # Permite ver exclusivamente los puertos de escucha.
-p : # Muestra las conexiones para el protocolo especificado que puede ser TCP o UDP.
-u : # Lista todos los puertos UDP.
-t : # Lista todos los puertos TCP.
-o : # Muestra los timers.
-n : # Muestra el numero de puerto.
-a : # Visualiza todas las conexiones activas del sistema.

curl URL : # Obtengo los datos del response.
curl URL -v : # Obtengo la cabecera expandido y los datos del response.
curl URL -i : # Obtengo la cabecera resumido y los datos del response.
curl URL -I : # Obtengo la cabecera.
curl -o example.txt URL : # Exportar el resultado a un archivo.

traceroute 172.30.0.136
tracert 172.30.0.136
tracepath 172.30.0.136

dig google.com : # Consultas DNS
dig @8.8.8.8 google.com : # Consultas DNS

nmap 172.30.0.137 : # Ver los puertos abiertos.

wget  url_descargar : # Descargar archivo de internet

ifconfig : # Muestra/Configura las interfaces de red del sistema

resolveip : # Resuelve la ip del dominio o host que se indique.

ping 172.30.0.131
ping -c 4 172.30.0.137

hostnamectl : # Informacion del Hostname
hostname -I : # Muestra todas las direcciones de red del host
host www.agd.com.ar : # Buscar el nombre del host 
nslookup www.agd.com.ar : # Buscar el nombre del host

telnet 172.30.0.131 3306 : # Telnet

iptables -L -n : # Listar iptables
vi /etc/sysconfig/iptables : # Modificar iptables

```

##### Services in Ubuntu

```sh

sudo service apache2 start : # Start Apache2.
sudo service apache2 stop : # Stop Apache2.
sudo service apache2 restart : # Restart Apache2.
sudo service apache2 status : # Status Apache2.

sudo service mysql start : # Start Mysql.
sudo service mysql stop : # Stop Mysql.
sudo service mysql restart : # Restart Mysql.
sudo service mysql status : # Status Mysql.

sudo service node_agro start : # Start service Node.
sudo service node_agro stop : # Stop service Node.
sudo service node_agro restart : # Restart service Node.
sudo service node_agro status : # Status service Node.

sudo systemctl status node_auditoria.service
sudo systemctl start node_auditoria.service
sudo systemctl stop node_auditoria.service

sudo systemctl | grep running : # Listado de servicios y busca los que estan corriendo.
systemctl daemon-reload : # Actualizar servicios.

systemctl -l --type service --all : # Lista todos los servicio.

/lib/systemd/system/ : # Ubicacion de los servicios.

journalctl -u node_transporte.service -f -n 50 : # Ver registros del sistema.

journalctl -u node_transporte.service --since yesterday | grep 63804
journalctl -u node_transporte.service --since "2020-10-28 08:50:00" --until "2020-10-28 08:55:00"

journalctl -u node_transporte.service _PID=21572
journalctl -u node_transporte.service _PID=21572 --since "2020-10-28" -full > /home/jrivera/log_transporte.txt
journalctl -u agripagoapp.service --since "2021-07-27 00:00:00" | grep 30708841907 > /home/jrivera/log_agri_ayer_2.txt
journalctl -u node_transporte.servic -n 100 -o json-pretty

sudo journalctl -u nombre_servicio.service --since "5 days ago" > logs_since_5_days.txt : # Exportar log de 5 dias atraz.
sudo journalctl -u nombre_servicio.service --since "today" > logs_since_today.txt : # Exportar log de hoy.

```

#### GIT:

##### Getting & Creating Projects

```sh
git init : # Crear un nuevo repositorio.
git clone username@host:/path/to/repository : # Obtener una copia de un repositorio.
git clone username@host:/path/to/repository folder_name : # Obtener una copia de un repositorio a un directorio particular.
git clone -b <branch> <remote_repo> : # Clonar una rama en particular.

git remote add origin https://github.com/nombre_repositorio.git : # Conectar tu repositorio local a un repositorio remoto.
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
git checkout - : # Switch to the branch last checked out.

git checkout -- file.html : # Descartar los cambios de un archivo.
git checkout . : # Descartar los cambios de todos los archivo.

git stash : # Stash changes in a dirty working directory.
git stash clear : # Remove all stashed entries.

# Para fusionar una rama nuevafuncionalidad dentro de master vamos a situarnos en la rama mater y a mezclar ambas:
git checkout master : # Cambiar a branch master.
git merge nuevafuncionalidad : # Fusionar nuevafuncionalidad a tu rama activa(master).
 ```
 
##### Sharing & Updating Projects

```sh
git push origin <branch> : # Subir (push) la rama a tu repositorio remoto.
git pull : # Actualizar tu repositorio local al commit más nuevo.
git pull origin NombreDeBranch : # Actualiza nuestro branch local, desde un branch remoto que indicamos en el comando.
 ```
 
##### Inspection & Comparison

```sh
git log : # Ver cambios.
git log --summary : # Ver cambios detallados.
git log --graph : # Visualizar los commit de forma grafica.
git show : # Muestra los cambios realizados en el commit.

git diff : # View difference between Stage and Working Directory.
git diff --staged : # View difference between HEAD and Stage.
git diff HEAD : # View difference between HEAD and Working Directory.

git config : # Establecer la configuracion.
git remote -v : # Muestra los repositorios remotos que están configurados actualmente.

git remote set-url origin https://github.com/USERNAME/REPOSITORY.git : # Cambiar la URL del repositorio remoto existente.

git config --get remote.origin.url : # Obtener la url de nuestro repositorio.

git remote show nombre_repositorio : # Ver informacion detallada sobre la configuracion del repositorio.
git remote show origin : # Ver informacion detallada sobre la configuracion del repositorio.
git config --local -l : # Conocer todos los datos de la configuración local de Git en nuestro proyecto.
git config --global -l : # Conocer todos los datos de la configuración global de Git en nuestro proyecto.
git config --global user.name "Sam Smith" : # Configurar name que será identificado al hacer el commits.
git config --global user.email sam@example.com : # Configurar email que será identificado al hacer el commits.
git config --global color.ui true : # Aplicar color al git.

git config --global -l : # Conocer todos los datos de la configuración global de Git.
git config --global http.proxy http://<username>:<userpsw>@<proxy>:<port> : # Configurar proxy.
git config --global --unset http.proxy : # Setear las configuraciones del proxy.
 ```
 
#### Vaciado de Compras DB Mantenimiento (131) 
```sh
 SET FOREIGN_KEY_CHECKS = 0;truncate attachment_additional_doc; truncate attachment_oqs; truncate attachment_visits; truncate attachments; truncate balance_cancelations; truncate building_visit_dates; truncate building_visit_headers; truncate calendaries; truncate chat_messages; truncate chat_participants; truncate chat_threads; truncate contacts_for_ocs; truncate filings; truncate mail_invitations;truncate metrics;truncate notifications; truncate oq_additional_costs; truncate oq_line_additional_costs; truncate oq_lines; truncate oqs; truncate oqs_added; truncate px_company; truncate px_company_notification; truncate px_company_oq; truncate px_company_oq_lines; truncate px_company_oq_lines_comments; truncate px_company_requote_comments; truncate px_oq; truncate pxs; truncate reject_comment_ocs; truncate statistics_oqs; truncate web_hooks; truncate doc_memory; SET FOREIGN_KEY_CHECKS = 1;
 ```
 #### Transferir respuestas de proveedores a JDE de una PX dada (131/137) 
 ```sh
/var/www/html$ sudo php artisan jde:enviar-respuestas --px PX13459
 ```
 
#### Generar Password - Portal de Compras
```sh
/var/www/html$ php artisan password:generate
```
 
 #### Convertir UTF-16 a UTF-8 y cargar CSV en base (Proveedores PY)  
 ```sh
sudo /home/apps/proveedores2015/interfaz/convertir-utf16-utf8.sh /tmp/proveedores utf-16 utf-8
/home/apps/proveedores/ejecutar-interfaz.sh > /tmp/proveedores/resultado.txt
 ```
 
 #### Reinicio de nginx en iplan3 - SSL vencido Portal de Compras
 ```sh
sudo nginx -s reload
 ```
 
  #### Share Folders on Local Network Between Ubuntu and Window
 ```sh
sudo mount.cifs //IP/compartido$ /directorio -o user=nombre_usuario, pass="pass_usuario" 
sudo mount : # Ver unidades de red montada.
 ```
