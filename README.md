## Ubuntu Command List

### Básicos

**` cd /home `** : Ir al directorio /home.  
**` cd .. `** : Ir al directorio anterior.  
**` pwd `** : Mostrar ruta.  

**` sudo su `** : Acceder como root.  

**` ls `** : Listar contenido.  
**` ls -lh `** : Listar contenido + permisos (h tamaño del archivo).  
**` ls -al `** : Listar contenido + permisos + ocultos.  
**` ls -tl `**  
**` ls *.json `**  

**` mkdir dir1 `** : Crear directorio.  
**` mkdir -p /var/www/html/nombredirectorio.com `** : Crear directorio (-p: crea los directorios padres en caso necesario).  

**` rm -fr /var/www/posadawebsite/ `** : Eliminar directorio (forzado, recursivo).  
**` rm file1 `** : Eliminar archivo.  
**` rm -f file1 `** : Eliminar archivo forzado.  
**` rm -rf dir1 `** : Eliminar directorio recursivo y forzado.  

**` cp file1 destino/ `** : Copiar archivo.  
**` cp -ra directorio/ ruta_de_destino/nombre_copia `** : Copiar directorio completo (Recursivo y con los permiso).  

**` scp -r /home/mario/carpeta /home/usr `** : Copiar directorio completo.  
**` scp archivo.txt /home/usr `** : Copiar archivo a directorio.  

**` mv file1 /destino `** : Mover archivo.  
**` mv directorio directorio_renombrado `** : Renombrar directorio.  

**` ctrl + c  `** : Frenar ejecución.  
**` clear `** : Limpiar pantalla.  
**` history `** : Historial de comandos ejecutados.  

### Command find:

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


