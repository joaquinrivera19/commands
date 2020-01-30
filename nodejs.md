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


npm run prod : # Corro el servidor
forever list : # Lista los Forever
forever start nombre.js : # Iniciar el Forever
forever stop PID : # Frenar el Forever
forever stopall : # Frenar todos los Forever

forever -w server.js :#  -w para reiniciar automáticamente cada vez que cambie su archivo

forever start --minUptime 1000 --spinSleepTime 1000 -a -l /home/apps/transportes/node/logs/log.log -o /home/apps/transportes/node/logs/out.log  --sourceDir /home/apps/transportes/node -c "npm start" /

https://www.npmjs.com/package/forever


```
