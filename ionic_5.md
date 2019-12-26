##### Comandos ionic 5

```sh

npm install -g ionic

# Crear una nueva aplicación de Ionic

ionic start myApp tabs
ionic start myApp sidemenu
ionic start myApp blank

ionic serve

ionic cordova platform add android
ionic cordova platform add ios

ionic cordova resources

npm install

# Crear una pagina en ionic

ionic g page NombrePagina 

# Crear un servicio en ionic

ionic g s NombreServicio

# Crear un modulo en ionic

ionic g module NombreModulo 

# Crear un componente en ionic

ionic g component NombreComponente 

# Crear un pipe en ionic

ionic g pipi NombrePipe 

# Crear componentes via ng Angular(c componente, m modulo, g generar, services)

ng serve
ng g c pages/about
ng g m appRouting
ng g s services/data

# Prepara todo lo necesario Proyectos para que despues hacer el build del apk

ionic cordova prepare android
ionic cordova prepare ios

# Compila la apk

ionic cordova build android
ionic cordova build ios

ionic cordova platform remove android

# Muestra el listado de dispositivos conectados

ionic cordova run --list

# Compila y lanza la aplicacion

ionic cordova run android
ionic cordova run ios

# Ver cambios en tiempo real

ionic cordova run android -l 

```
