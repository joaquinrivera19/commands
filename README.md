## Ubuntu Command List

#### Gestionar archivos y directorios

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

### Encontrar archivos:

**` find /home/nombre_usuario/Escritorio -name “*.jpg”`** : Busca todos los archivos del Escritorio con extensión .jpg.  
**` find . -name “*hola*”`** : Busca todos los archivos que contienen la palabra “hola” en el nombre.  
**` find . ! -name “*hola*”`** : Busca todos los archivos que NO contienen la palabra “hola” en el nombre.  
**` find . -name “*hola*” -a “*caracola*”`** : Busca todos los archivos que contienen la palabra “hola” y “caracola” en el nombre.  
**` find . -name “*hola*” -o “*caracola*”`** : Busca todos los archivos que contienen la palabra “hola” o “caracola” en el nombre.  
**` find . -iname “*hola*”`** : Busca todos los archivos que contienen la palabra “hola” en el nombre tanto en mayúsculas como en minúsculas.   
**` find . -user nombre_usuario`** : Busca todos los archivos de un usuario determinado (nombre_usuario).  
**` find . -size +1000k`** : Busca todos los archivos de tamaño mayor a 1000 kb.  
**` find . -amin -30`** : Busca todos los archivos a los que se accedió en los últimos 30 minutos.  
**` find . -atime 365`** : Busca todos los archivos a los que se accedió hace un año exactamente.  
**` find . -name “*.jpg” -exec rm {} \;`** : Busca todos los archivos con extensión .jpg y los borra.  
**` find nombre_directorio -name nombre_archivo > /home/nombre_usuario/Escritorio/Lista.txt`** : Para guardar el resultado de la búsqueda en un archivo de texto.  

**` find /root/ -type f -printf "%T@ %p\n" | sort -nr | head -15 `** : Buscar los 15 archivos modificados.   

### Command MySQL:

**`mysql -u jrivera -p; `** : Abrir MySQL.  
**`mysql -u jrivera -p bd; `** : Abrir MySQL.  
**`mysql -h host -u jrivera -p bd; `** : Abrir MySQL.  
**`use nombre_bd;  `** : Abrir bd.  
**` describe nombre_tabla; `** : Estructura tabla.  
**` create database nombre_bd; `** : Crear bd.  
**` show databases; `** : Ver bd.   
**` select database(); `** : Ver bd en uso.  
**` show full tables from mi_base_de_datos; `** : Ver tablas.  
**` show tables; `** : Ver tablas.  
**` show grants; `** : Ver Permisos Usuario.  
**` select .. \G; `** : Consulta SQL, consulta mas visible.  
**` drop database nombre_bd; `** : Eliminar BD.  
**` show procedure status \G; `** : Ver procedimientos almacenados(por descripcion).  
**` show create procedure nombre_procedimiento; `** : Ver procedimientos almacenados (por codigo).  
**` show create view view_name; `** : Ver vista.  


**` sudo tar -zcvf /destino/nombre_archivo.tar.gz /origen_directorio/ `** : Comprimir.  
**` mysqldump -u db_username -h db_host -p db_name table_name > /home/name/db_nanme.sql `** : Backup.  
**` scp usuario@ip:/carpeta_origen/db_name.sql /carpeta_destino/db_name.sql `** : Secure Copy.  
**` sudo tar -xzvf /carpeta_origen/name.tar.gz /carpeta_destino/name/ `** : Descomprimir.  
**` mysql -u db_username -p db_name < /home/name/db_name.sql `** : Restaurar.  
**` mysql -u db_username -p db_name < /home/name/script.sql `** : Ejecutar archivo sql.  


**` 1. CREATE USER 'nombre_usuario'@'localhost' IDENTIFIED BY 'tu_contrasena'; `** : Crear un usuario nuevo.  
**` 2. GRANT ALL PRIVILEGES ON * . * TO 'nombre_usuario'@'localhost'; `** : Crear permisos para el usuario (el asterisco representa base de datos y la tabla).  
**` 3. FLUSH PRIVILEGES; `** : Refrescar todos los privilegios.  
**` 4. DROP USER 'nombre_usuario'@'localhost'’; `** : Eliminar un usuario.  

### Espacio en disco:  

### Permisos en ficheros:  

### Ver el contenido de un fichero:  

### GIT:

### Getting & Creating Projects

| Command | Description |
| ------- | ----------- |
| **` git init `** | Crear un nuevo repositorio. |
| **` git clone /path/to/repository `** | Crea una copia local del repositorio. |
| **` git clone username@host:/path/to/repository `** | Si utilizas un servidor remoto. |

### Basic Snapshotting

| Command | Description |
| ------- | ----------- |
| **` git status `** | Estado del repositorio. |
| **` git add nombre_archivo `** | Registrar cambios de un archivo. |
| **` git add . `** | Agregando todos los cambios de archivos en un directorio. |
| **` git add -A `** | Registrar cambios de todos los archivos. |
| **` git commit -m "Commit message" `** | Hace commit a los archivos que indiquemo. |
| **` git rm -r [file-name.txt] `** | Eliminar un archivo o directorio. |
 
### Branching & Merging

| Command | Description |
| ------- | ----------- |
| **` git branch `** | Listar branches (local) |
| **` git branch -a `** | Listar branches (local y remoto) |
| **` git branch [branch name] `** | Crear un nuevo branch |
| **` git branch -d [branch name] `** | Eliminar un branch |
| **` git push origin --delete [branch name] `** | Elimina un branch remoto |
| **` git checkout -b [branch name] `** | Crea un nuevo branch y me cambio a ella |
| **` git checkout -b [branch name] origin/[branch name] `** | Clona un branch remota y me cambia a ella |
| **` git checkout [branch name] `** | Cambiar a un branch |
| **` git checkout - `** | Switch to the branch last checked out |
| **` git checkout -- [file-name.txt] `** | Descartar cambios a un archivo |
| **` git merge [branch name] `** | Fusionar una rama en la rama activa |
| **` git merge [source branch] [target branch] `** | Fusionar una rama en una rama objetivo |
| **` git stash `** | Stash changes in a dirty working directory |
| **` git stash clear `** | Remove all stashed entries |

### Sharing & Updating Projects

| Command | Description |
| ------- | ----------- |
| **` git push origin <branch> `** | Subir (push) la rama creada a tu repositorio remoto. |
| **` git pull `** | Actualizar tu repositorio local al commit más nuevo. |
| **` git pull origin NombreDeBranch `** | Actualiza nuestro branch local, desde un branch remoto que indicamos en el comando. |
| **` git merge <branch> `** | Para fusionar otra rama a tu rama activa. |
| **` git remote add origin <server> `** | Conectar tu repositorio local a un repositorio remoto. |

### Inspection & Comparison

| Command | Description |
| ------- | ----------- |
| **` git log `** | Ver cambios. |
| **` git log --summary `** | Ver cambios detallados |
| **` git show `** | Muestra los cambios realizados en el commit. |
| **`git diff [source branch] [target branch]`** | Vista previa de cambios antes de fusionar |

**` git config --global user.name "Sam Smith" `** : Configurar name.  
**` git config --global user.email sam@example.com `** : Configurar email.  




