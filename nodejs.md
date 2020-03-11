##### Comandos NodeJS

```sh

npm install express
npm install body-parser
npm install cors
npm install mongoose
npm install express-fileupload
npm install jsonwebtoken

npm install bcrypt
npm install bcryptjs

npm install axios --save
npm install hbs --save

npm install -g typescript
npm install -g nodemon
npm install -g forever

npm install @types/express --save-dev
npm install @types/mongoose --save-dev
npm install @types/bcryptjs --save-dev

------------------

npm install : # 1 - Instalar paquetes
sudo mongod : # 2 - Levantar la base de datos mongo
tsc -w : # 3 - Compilar en forma js en modo observador
nodemon dist: # 4 - Levantar el server con nodemon

------------------

npm init

tsc index.ts : # generar el archivos .js

node index.js : # Nuetra aplicacion de Node tiene que estar compilada en js

tsc --init : # Crear un archivo de inizilizacion de ts

tsc -w : # busca todos los archivos de ts y los compila colocando en el directorio dist de forma automatica

node dist/index.js : # busca el archivo para ejecutar

nodemon dist : # Automaticamente te refleja los cambios y levante el server

------------------

"scripts":{
  "dev": "nodemon index.js",
  "prod": "forever start index.js"
}


npm run dev : # Ejecutar nodemon.
npm run prod : # Ejecutar forever.

forever list : # Lista los forever.
forever start nombre.js : # Iniciar el forever.
forever stop PID : # Frenar el forever.
forever stopall : # Frenar todos los forever.

forever -w server.js :#  -w para reiniciar automáticamente cada vez que cambie su archivo.

forever start --minUptime 1000 --spinSleepTime 1000 -a -l /home/apps/transportes/node/logs/log.log -o /home/apps/transportes/node/logs/out.log  --sourceDir /home/apps/transportes/node -c "npm start" /

https://www.npmjs.com/package/forever


```
