heroku login ---> Loguearte
heroku create nombre_app ---> Crear una nueva aplicacion. si no le pasas nombre te generar uno aleatorio
heroku apps:rename --app nombre_app nombre_nuevo ---> Renombrar aplicacion
git remote -v ---> ya se ven la rama de heroku
git status
git init
git add .
git coommit -m "nombre commit"
git push heroku master ---> Subimos los cambios de la rama heroku
heroku logs --tail ---> ver logs en tiempo real
heroku config:add APP_NAME=Laravel
heroku addons:create cleardb:ignite ---> Crear una instancia para la bd en mysql (ignite: tipo de bd).
heroku config | grep CLEARDB_DATABASE_URL ---> te retorna la url de conexion del mysql.
heroku config:set DATABASE_URL='el resultado del paso anterior' ---> seteas el parametro de la bd. [primero es el usuario, luego pass (hasta el @), host, ultimo nombre de bd. (el @, : y / son para separar, no son parte de los parametros) ]
Se puede usar cualquier cliente de mysql para conectarse a la instancia creada

heroku run bash --> establece una conexion sssh a nuestro servidor
touch Procfile --> crear archvivo de configuracion en el root del proyecto
heroku pg:credentials:url --> crear cadena de conxion a la bd de posgres
heroku run php artisan migrate --> executas un comando directamente en heroku

1 - Primero creas el proyecto de laravel (composer create-project --prefer-dist laravel/laravel blog)
2 - Creas el archivo Procfile (web: vendor/bin/heroku-php-apache2 public/)
3 - heroku login
4 - git init / git add . / git commit -m "nombre comit"
5 - heroku create
6 - git remote -v
7 - git push heroku master
8 - heroku config:add APP_NAME=Laravel / seteas las demas variables de laravel (configuras desde la web o desde consola)
9 - En resources agrega el complementeo de "Heroku Postgres"
10 - heroku pg:credentials:url
11 - heroku config:add DB_CONNECTION=pgsql / seteas las demas variables de conexion [NO SE MODIFICA EL .ENV, SOLAMENTE LAS VARIABLES DE HEROKU]
12 - heroku run php artisan migrate
13 - En caso de nuevo cambio: git add . /git commit -m "nombre commit" / git push heroku master // Listo la actualizacion
