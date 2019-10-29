##### Pushing commits to a remote repository

```sh
git init

git config --global user.email "jrivera@agd.com.ar"
git config --global user.name "Rivera Joaquin"

# Agregar .gitignore
# Agregar README.md


git status
git add .
git commit -m "Primer Commit" 

git remote add origin https://github.com/nombre_repositorio.git
git push -u origin master : # Sube todo los cambios (-u origin master --> setea por defecto el origin, esto se hace una sola vez)

git tag -a v1.0.0 - m "Primera Version" : # Para crear un tag, una anotacion de la version. Permite descargar todos el proyecto como esta en ese momento
git tag : # Ver los tag creados
git push --tags : # subir tag
 ```
