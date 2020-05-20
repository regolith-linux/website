---
title: "Instalación"
linkTitle: "Instalación"
weight: 1
description: >
  Instala Regolith en tu computadora.
---

Basandote en tu método de instalación preferido, sigue una de las dos secciones siguientes para instalar Regolith. A diferencia de versiones anteriores de REgolith, las instalaciones a traves de PPA e ISO resultan en configuraciones distintas. La instalación PPA favorece la coexistencia con los ya existentes escritorios de Ubuntu, mientras que el ISO está optimizado para la menor utilización de recursos. Especificamente, la instalación a traves del ISO es apenas 1Gb más pequeña y el uso de RAM en frio es reducido por aproximadamente 200Mb en comparación con la instalación PPA.

## Opción 1: Instalador de Ubuntu

1. Descarga una imagen ISO de [Regolith R1.4](https://github.com/regolith-linux/regolith-desktop/releases/tag/R1.4.1) <i class="fas fa-cloud-download-alt"></i> y luego usa una herramienta de instalación de SO tal como USB Creator para inscribir el archivo descargado en un dispositivo USB. Aquí hay algunas guías de Ubuntu para llevarlo a cabo en [Windows](https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-windows#0), [Mac](https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-macos#0), y [Ubuntu](https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-ubuntu#0).
2. Reinicia la computadora y seleccione el dispositivo USB como dispositivo de arranque.
3. Instala o corre el entorno en vivo proveyendo la información necesaria cuando la linea de comandos lo solicite durante el proceso de instalación. Mira [este tutorial](https://tutorials.ubuntu.com/tutorial/tutorial-install-ubuntu-desktop) para aprender más sobre el proceso de instalación.
4. Cuando la linea de comandos lo solicite, reinicia la computadora y ¡Logueate en tu nuevo entorno Regolith!

## Opción 2: PPA

1. Mira más abajo sobre [fuentes PPA](#ppa-sources), y agrega la PPA que hayas elegido a tu sistema:
<pre>
$ sudo add-apt-repository ppa:regolith-linux/release
</pre>
2. Instala el paquete de escritorio Regolith:
<pre>
$ sudo apt install regolith-desktop
</pre>
3. (Opcional) instala los indicadores de estado como están en Regolith 1.3 por defecto.
<pre>
$ sudo apt install i3xrocks-net-traffic i3xrocks-cpu-usage i3xrocks-time
$ sudo apt install i3xrocks-battery # for laptops
</pre>
4. Reinicia la computadora, y cuando estes ingresando selecciona la sesión "Regolith" en el menú de engranaje (⚙️):

![Ubuntu Login Screen](/regolith-screenshot-login.png)

A partir de este punto, por favor continúa en la próxima sección, [configuration](../configuration) para aprender sobre los cambios más comunes que a la gente le gusta realizar a Regolith.

## Actualizaciones

### Regolith 1.3 -> Regolith 1.4

El PPA inestable `ppa:regolith-linux/release` está actualmente alojando los paquetes de la versión 1.4.1 de Regolith. Para actualizar un sistema ya existente a 1.41, actualiza el gestor de paquetes para que supla los paquetes de Regolith desde el PPA `stable`:

```bash
$ apt policy | grep regolith
# Va a retornar alguna información con URLs. Asumiendo que devuelva http://ppa.launchpad.net/regolith-linux/release/ubuntu :
$ sudo add-apt-repository --remove ppa:regolith-linux/release # elimina el PPA de release
$ sudo add-apt-repository ppa:regolith-linux/release
$ sudo apt update && sudo apt dist-upgrade
$ sudo apt install i3xrocks-net-traffic i3xrocks-cpu-usage i3xrocks-time #también considera i3xrocks-battery i3xrocks-memory i3xrocks-weather
```

Luego de realizar la actualización, vuelve a ingresar en el sistema. En cualquier caso, si tenías tu propio archivo de configuración i3 o raiz Xresources, lee la sección `Actualizando con Personalizaciones` más abajo.

### Regolith 1.0 - 1.2 -> Regolith 1.4

Para actualizar de Regolith 1.0 a 1.2, la URL del PPA tiene que ser cambiada y recien allí las nuevas versiones de paquetes van a ser aplicadas por el gestor de paquetes:
```bash
$ sudo add-apt-repository --remove ppa:kgilmer/regolith-stable
$ sudo add-apt-repository ppa:regolith-linux/release
$ sudo apt update && sudo apt dist-upgrade
```
Luego de realizar estos pasos, necesitarás cerrar la sesión e ingresar nuevamente.

### Actualizando con Personalizaciones

Cuando se actualiza de una version mayor o menor (ejemplo 1.2 a 1.3), es frecuente el caso de que nuevos valores de Xresource y otros archivos de configuración hayan cambiado. Los existentes Xresource y archivos de configuracion tales como el archivo `config` de i3 necesitarán ser actualizados en orden para que la actualización funcione apropiadamente. Si has modificado cualquier archivo de configuración de Regolith o creado un archivo Xresource aislado (`~/.Xresources-regolith`), esos seguramente necesiten ser actualizados para que sean tomados en cuenta. La manera más simple de lograr esto es moverlos a otro lugar, realizar la actualización, y luego reintegrar cualquier personalización deseada en los nuevos archivos:

```bash
$ mkdir ~/regolith-backup
$ mv ~/.Xresources-regolith ~/regolith-backup
$ mv ~/.config/regolith ~/regolith-backup
```

Una vez realizados estos pasos, ingresando nuevamente debería resultar en una instancia de "stock" de Regolith. A partir de allí, cualquier cambio que desee reintegrar puede lograrse editando las nuevas versiones de los archivos de configuración de Regolith que se encuentran en el directorio `/etc/regolith`.

### Ediciones a los archivos `/etc/regolith/...`

Si tomaste atajos y editaste manualmente los archivos poseidos por `root` en `/etc/regolith` o cualquier otro lado, la herramienta de empaquetado quizás no actualice los archivos, sin mencionar los archivos anticuados que hayan quedado. Incluso eliminando el paquete a traves de `apt remove ...` quizas no resulte en un sistema limpio. En este caso, hay que usar el comando `purge` para eliminar el paquete y manualmente eliminar cualquier archivo que quede. Por ejemplo, para limpiar los archivos de configuración de i3:

```bash
$ sudo apt purge regolith-i3-gaps-config
$ sudo rm -Rf /etc/regolith/i3 # asegurate de hacer un respaldo de cualquier cambio importante
$ sudo apt install regolith-i3-gaps-config
```

### Resolución de Problemas

#### Bloques Faltantes Luego de Actualizar

Regolith 1.4 cambia la manera en la que los bloques osn instalados y configurados. Este cambio es necesario para sustentar la arquitectura `arm64` y hacer simple intercambiar componentes como el subsistema de notificaciones. A partir de 1.4 y en adelante, los bloques son instalados por el gestor de paquetes. Mira [este How-To](../../howto/add-remove-blocklets) de cómo agregar y configurar bloques.

## Actualizando Ubuntu

Actualizando desde Ubuntu 18.04, 18.10, 19.04, o 19.10 a 20.04 requiere que el PPA de Regolith sea re-agregado una vez que la actualización de Ubuntu se complete.

1. Si la sesión estándar de Ubuntu no está instalada, instalala: <br/>`$ sudo apt install ubuntu-session`.  (Si ya se encuentra instalada esto no generará ningún problema)
2. Realice la actualización a 20.04.
3. Luego de reiniciar, ingrese en la sesión de stock de Ubuntu, no a Regolith.
4. Agrega el PPA de Regolith, ya que el proceso de instalación borró los PPAs:<br/>`$ sudo add-apt-repository ppa:regolith-linux/release`
5. Actualiza Regolith a la última versión:<br/>`$ sudo apt upgrade && sudo apt install regolith-desktop`
6. Reinicia, y ahora selecciona la sesión Regolith en la pantalla de ingreso.

NOTA: Algunos usuarios reportaron que `regolith-desktop` es automaticamente desinstalada durante la actualización. Si esto sucede, simplemente corra `sudo apt install --reinstall regolith-desktop` luego de que que la actualización se complete para restaurar la sesión de escritorio Regolith.

## Reinstalación

En el caso de que el entorno de escritorio Regolith se corrompa o sea imposible de cargar, siga los siguientes pasos para restaurarlo. Ningún archivo de usuario va a ser eliminado como parte de este proceso:

1. Ingrese en la sesión de stock de Ubuntu. Si esta sesión no se encuentra disponible, instalala con `sudo apt install ubuntu-session`. Si no es capaz de ingresar, tipea <span class="text-nowrap"><span class="badge badge-warning">ctrl</span> <span class="badge badge-warning">alt</span> <span class="badge badge-warning">F2</span></span> para acceder a TTY. Luego de instalar `ubuntu-session`, va a tener la opción de seleccionar el tipo de sesión `Ubuntu` en la pantalla de ingreso.
2. Desinstala Regolith desde la sesión Ubuntu:
```bash
$ sudo apt purge regolith-*
$ sudo apt autoremove
$ rm -Rf ~/.config/regolith/flags
```
3. Verifica que ningún paquete de Regolith siga instalado con `apt list --installed | grep -i regolith`. El comando no debería devolver ningún paquete. Si lo hace, desinstalalos manualmente con `sudo apt purge <paquete>`.
4. Reinstala Regolith:
```
$ sudo apt install regolith-desktop
```
5. Reinicia la computadora, y cuando ingreses selecciona la sesión "Regolith" en el menú del engranaje. En este punto puedes mantener o eliminar `ubuntu-session`.

## Desinstalación de `regolith-desktop`

Simplemente sigue estos pasos para eliminar Regolith de tu sistema:

1. Cierra la sesión de Regolith e ingresa con la sesión por defecto de Ubuntu.
2. Abre un terminal y corre:
```bash
$ sudo apt purge regolith-desktop && sudo apt autoremove
``` 
3. Ahora elimina el PPA:  
```bash
$ sudo add-apt-repository --remove ppa:regolith-linux/release
```
4. Para restaurar tus ajustes de GNOME, corre: 
```bash 
$ source ~/.regolith-gnome-backup
```
5. Ahora puedes eliminar de manera segura el directorio `~/.config/regolith`.

## Fuentes PPA

Hay 4 fuentes para los paquetes de Regolith. El PPA `release` es recomendado para la mayoría de los usuarios, pero otro puede ser mejor para ti basado en tus necesidades. Aquí dejamos una descripción de cada PPA.

| Nombre | URI del PPA | Frescura | Estabilidad | Descripción |
|------|---------|-----------|-----------|-------------|
| Unstable | <span class="text-nowrap">`ppa:regolith-linux/unstable`</span> | <span class="badge badge-primary">Muy Alta</span> | <span class="badge badge-secondary">Baja</span> | El PPA `unstable` es recomendado para desarrolladores del proyecto y todo aquel que se sienta a gusto con resolver sus propios problemas con el sistema y no le importe tener un problema de vez en cuando. |
| Stable | `ppa:regolith-linux/stable` | <span class="badge badge-primary">Alta</span> | <span class="badge badge-secondary">Media</span> | El PPA `stable` es para aquellos que quieran las últimas funcionalidades, incluso entre versiones oficiales. |
| Release | <span class="text-nowrap">`ppa:regolith-linux/release`</span> | <span class="badge badge-primary">Baja</span> | <span class="badge badge-secondary">Alta</span> | El PPA `release` provee arreglos de bugs a medida que van sucediendo y actualizaciones de funcionalidades al momento de la publicación. |
| r1.3 | `ppa:regolith-linux/r1.3` | <span class="badge badge-primary">Muy Baja</span> | <span class="badge badge-secondary">Muy Alta</span> | El PPA `r1.3` está fijado en la versión 1.3 y no va a ser actualizado excepto por errores críticos. |

## Soporte ARM

Los paquetes Regolith son desarrollados para arquitecturas `i386`, `amd64`, y `arm64`. No hay disponible un instalador individual para sistemas tales como Raspberry Pi, sin embargo Regolith puede ser instalado a traves de PPA en un sistema Ubuntu ya existente. [Ver más arriba](#option-2-ppa) sobre instalar Regolith a traves de PPA.
