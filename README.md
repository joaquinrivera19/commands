## Ubuntu Command List

### Ejemplos de uso del comando find:

**`sudo find /home/nombre_usuario/Escritorio -name “*.jpg”`** : Busca todos los archivos del Escritorio con extensión .jpg.  
**`sudo find . -name “*hola*”`** : Busca todos los archivos que contienen la palabra “hola” en el nombre.  
**`sudo find . ! -name “*hola*”`** : Busca todos los archivos que NO contienen la palabra “hola” en el nombre.  
**`sudo find . -name “*hola*” -a “*caracola*”`** : Busca todos los archivos que contienen la palabra “hola” y “caracola” en el nombre.  
**`sudo find . -name “*hola*” -o “*caracola*”`** : Busca todos los archivos que contienen la palabra “hola” o “caracola” en el nombre.  
**`sudo find . -iname “*hola*”`** : Busca todos los archivos que contienen la palabra “hola” en el nombre tanto en mayúsculas como en minúsculas.  
**`sudo find . -user nombre_usuario`** : Busca todos los archivos de un usuario determinado (nombre_usuario).  
**`sudo find . -size +1000k`** : Busca todos los archivos de tamaño mayor a 1000 kb.  
**`sudo find . -amin -30`** : Busca todos los archivos a los que se accedió en los últimos 30 minutos.  
**`sudo find . -atime 365`** : Busca todos los archivos a los que se accedió hace un año exactamente.  
**`sudo find . -name “*.jpg” -exec rm {} \;`** : Busca todos los archivos con extensión .jpg y los borra.  
**`sudo find nombre_directorio -name nombre_archivo > /home/nombre_usuario/Escritorio/Lista.txt`** : Para guardar el resultado de la búsqueda en un archivo de texto.  
