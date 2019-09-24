# TACACS+ Docker Image

Esta imagen está construida a partir de 
[tac_plus](http://www.pro-bono-publico.de/projects/), implementeción 
escrita por Marc Huber.

## Tags

`latest`, `ubuntu`, `ubuntu-201904171831` - Basado en la versión de ubuntu
18.04.


## Additions

La imagen docker incluye el paquete LDAP con autenticación Mavis.

## Using

Para ejecutar con la configuración por defecto:

```
docker run --name tac_plus -d -p 49:49 raul1985/tacacs_plus:1
```


El fichero de configuración debe de ser modificado antes de ser usado, ya que 
hay que incluir los datos de conexión con nuestro servidor LDAP.
El fichero que contiene la configuración se encuentra en la ruta `/etc/tac_plus/tac_config.cfg´

Los log de acceso se guardarán en la ruta `/var/log/tacacs´

El puerto expuesto de nuestro servidor será el 49.


## Volumes

Se crean tres volúmenes a la hora de compilar la imagen, dos de ellos para sincronizar la 
zona horaria y la hora local. El tercer volumen creado es para guardar los log que se irán generando 
por nuestro servidor tacacs.

Se deja comentado un cuarto volumen que podemos descomentar si queremos crear nuestro fichero de 
configuración para una vez que ejecutemos el `docker-compose.exe` cargue directamente de este fichero
que se debe almacenar en la ruta `/etc/tac_plus:/etc/tac_plus`.

Una vez ejecutado el docker-compose, podemos volver a ejecutarlo con la opción -f 
`docker-compose.exe -f docker-compose_volumes.yml up -d` para realizar una modificación de nuestros volumenes
y así poder llevar la gestión de los mismos a través de Volumnes, sin tener que modificar nada en el contenedor.


## Configuration

La documentación para la configuración de TACACS la puedes encontrar:

[here](http://www.pro-bono-publico.de/projects/unpacked/doc/tac_plus.pdf).

## License

Esta imagen incluye software desarrollado por Marc Huber (Marc.Huber@web.de).

El software de soporte y tac_plus está bajo una licencia diferente que se encuentre en
[here](http://www.pro-bono-publico.de/projects/unpacked/LICENSE).
