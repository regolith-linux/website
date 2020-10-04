---
title: "Cambiar los PPAs de Regolith"
weight: 8
description: >
  Cambiar los PPA de Regolith permite conseguir un conjunto diferente de versiones de paquetes.
---

Esta página describe cómo configurar el sistema de paquetes para consumir los paquetes de Regolith entre un conjunto de PPAs.

## PPAs de Regolith

Vea esta sección para una descrićión de [cada PPA](/docs/getting-started/install/#ppa-sources). Por defecto los usuarios estarán en el PPA `release` que está pensado solo para ser actualizado tras correcciones de errores y publicaciones versionadas. Aquí está como cambiar al PPA `unestable`, actualizando la configuración del empaquetado apt.

1. Elimna el ya existente PPA `release`:
```bash
$ sudo add-apt-repository --remove ppa:regolith-linux/release
```
2. Agrega el PPA nuevo `unestable`:
```bash
$ sudo add-apt-repository ppa:regolith-linux/unstable
$ sudo apt update
```
3. Actualiza los paquetes a la versión actualizada contenida en el nuevo PPA:
```bash
$ sudo apt upgrade
```

### Revertir el Cambio

Para volver a la configuración previa, simplemente sigue los pasos de arriba pero intercambiando las URIs de los PPA. Entonces, cambia `unestable` por `release`.

Una vez que los PPAs hayan sido cambiados, para revertir cualquier paquete no deseado del repositorio `unestable`, simplemente instala la versión especifica a la que quieres revertir los cambios. Por ejemplo, si `regolith-desktop` tiene la versión 4 en `unestable` y versión 3 en `release`, has sido actualizado a la versión 4 luego de usar el PPA `unestable` y haciendo las actualizaciones. Para revertir el cambio a la versión 3, luego de cambiar nuevamente a la PPA `release`, dile a `apt` la versión especifica que deseas instalar: 

```bash
$ sudo apt install regolith-desktop=3
```
La forma general es `apt install <package name>=<package version>`. Serás notificado por `apt` de que la operación resultará en un descenso de la versión del paquete.

