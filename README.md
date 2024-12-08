# prueba3-craftech
CI-CD
Prueba 3 - 

CI/CD Dockerizar un nginx con el index.html default. Elaborar un pipeline que ante cada cambio realizado sobre el index.html buildee la nueva imagen y la actualize en la plataforma elegida. (docker-compose, swarm, kuberenetes, etc.) Para la creacion del CI/CD se puede utilizar cualquier plataforma (CircleCI, Gitlab, Github, Bitbucket.)


Despliege:
----------------------------------------------------
![image](https://github.com/user-attachments/assets/7935f7f3-1a07-4265-903f-37a7a80855c4)

Se realizo la tarea con Docker Compose y GitHub.

Los repositorios fueron creados en GitHub y DockerHub.

*Se coloco un index.html basico para realizar las pruebas.

*Se creo el Dockerfile donde se indica la utilizacion de la ultima version de NGINX y que se guarde dentro del mismo la pagina index.html.

*Se creo el archivo docker-compose.yml donde se especifica que el container debe tener la ultima version de NGINX, que se mapee el puerto 80 y se monte un volumen llamado html.


En el docker-image.yml es donde la magia sucede.
----------------------------------------------------
![image](https://github.com/user-attachments/assets/a13380d8-b0ff-4452-9d74-808d9dcc5488)

*Cuando se ejecute un PUSH sobre el repositorio que afecte a la branch "MAIN" y en la misma se halla producido un cambio en el archivo "index.html" este proceda a crear un workflow JOB con GitHubActions que actualiza la imagen creada en DockerHub.

*Ademas, se agrego el versionado de la imagen, guardando 2 versiones de la misma. Con los tags: ":latest" & ":previous".


El CI/CD se configuro con GitHub Actions. Agregando los paramatros "SECRETS" de User & Pasword del repositorio Docker creado donde se realiza el deploy de la imagen.


Para verificar la imagen:
-----------------------------------------------------
1ro:  docker pull danielneme/nginx-prueba3:latest

2do:  docker run -d -p 80:80 --name container-prueba danielneme/nginx-prueba3:latest

3ro:  docker ps para verificar que el contenedor este funcionando (Status Up) y luego ingresar con cualquier Browser por la ruta que se indique en PORTS.

![image](https://github.com/user-attachments/assets/60ef8935-ef64-4246-8000-2b7c793efe0e)


