---
title: "Aspecto"
linkTitle: "Aspecto"
weight: 1
description: >
  Aspecto de Regolith
---

Los `looks` provistos por Regolith tienen el prefijo de paquete <code>regolith-look-</code>. Por ejemplo, otro look que tiene la misma paleta de colores Solarized y un tema GTK diferente se llama <code>regolith-look-solarized-dark</code>.


## Encontrando Aspectos
Todos los paquetes <code>look</code> que usan este esquema nominal pueden ser encontrados a traves del siguiente comando:
```bash
$ apt search ^regolith-look-
```

## Instalando un Aspecto

Los aspectos pueden ser instalados a traves de la herramienta `apt` o con cualquier herramienta que pueda instalar paquetes Debian en el sistema, tales como `synaptic`. Por ejemplo, este comando instalará el aspecto `Ubuntu`:
```bash
$ sudo apt install regolith-look-ubuntu
```

Si prestas atención a la salida de `apt` notarás que además de instalar el aspecto, también se instalará `fonts-font-awesome`. Como característica, los aspectos son capaces de depender de cualquier recurso o artefacto que requieran como paquete. Esto se asegura de que una vez que un `look` está instalado, el usuario no se tenga que preocupar de que otras cosas pueda llegar a requerir ese `look` para funcionar apropiadamente. El gestor de paquetes se encarga de ello.

## Cambiando a un Aspecto

Una vez que un `look` ha sido instalado, una utilidad llamada `regolith-look` puede ser utilizada para habilitarlo. Para habilitar el `look` `Ubuntu` instalado en el paso anterior, intenta lo siguiente:
```bash
$ regolith-look set ubuntu
$ regolith-look refresh
```

El comando mencionará que creó un archivo en tu directorio de usuario. Este archivo es un archivo Xresource, y está guardado en una carpeta específica en la que `i3-gnome-flashback` lo buscará cuando se inicie la sesión. Miremos el archivo:
```bash
$ cat ~/.Xresources-regolith
#include "/etc/regolith/styles/ubuntu/root"
```

En esencia, nuestro archivo Xresource está simplemente apuntando a otro archivo Xresource. Miremos aquí:
```bash
$ cat /etc/regolith/styles/ubuntu/root
! -- Estilos - Colores
#include "/etc/regolith/styles/ubuntu/color"

! -- Estilos - Fuentes
#include "/etc/regolith/styles/ubuntu/typeface"

! -- Estilos - Tema
#include "/etc/regolith/styles/ubuntu/theme"

! -- Aplicaciones
! Estos archivos mapean los valores definidos arriba en ajustes específicos de aplicación
#include "/etc/regolith/styles/st-term"
#include "/etc/regolith/styles/i3-wm"
#include "/etc/regolith/styles/i3xrocks"
#include "/etc/regolith/styles/rofi"
#include "/etc/regolith/styles/gnome"
```

Aquí podemos ver que hay archivos Xresource separados que definen color, fuente y tema (iconos, GTK), y que son cargados y luego aplicados a los componentes de IU integrados por Regolith: st (terminal), i3-wm, i3xrocks, rofi, y GNOME.

## Refrescando un Aspecto

Quizás haya momentos donde la IU del sistema y el aspecto de Regolith pierdan sincronía. Por ejemplo, si un programa define el fondo de pantalla o el tema de íconos de manera externa, esto no se verá reflejado en los ajustes Xresource. Regolith solamente se actualizará a si mismo en el ingreso si detecta que hubo cambios en Xresources. Si quieres forzar a Regolith a recargar la IU basada en los ajustes Xresource, corre:
```bash
$ regolith-look refresh
```

## Aprender Más

Para profundizar más, lee sobre `Estilos` en la siguiente página y echale un vistazo al [LEEME `regolith-styles`](https://github.com/regolith-linux/regolith-styles).