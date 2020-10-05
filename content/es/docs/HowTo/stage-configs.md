---
title: "Montar Archivos de Configuración"
weight: 2
description: >
  Aprende cómo montar copias de usuario de los archivos de configuración de Regolith.
---

{{% pageinfo %}}
Regolith 1.3.1 y superiores: Si deseas sobreescribir o proporcionar un nuevo valor de Xresource, montar configuraciones no se requiere mas. Mira [esta página](../override-xres) para más detalles.
{{% /pageinfo %}}

Regolith usa una cantidad de archivos en `/etc/regolith` para determinar el comportamiento y aspecto de varios componentes. Mientras que es posible simplemente editar esos archivos directamente, los usuarios que lo hacen corren el riesgo de que sus configuraciones sean sobreescritas en futuras actualizaciones. El sistema de paquetes de Debian le preguntará a los usuarios si quieren tomar las actualizaciones o mantener sus archivos ya existentes, pero esto quizas tenga efectos secundarios no intencionados si los usuarios solo toman actualizaciones parciales de los archivos. Tal como Regolith, en el inicio de sesión, buscará por las versiones montadas por el usuario de los carchivos de configuracion y si existen las cargará *en lugar de los archivos por defecto*. Esto se recomienda por encima de editar directamente los archivos en `/etc/regolith` ya que le da más control al usuario sobre su configuración. Esta página describe cómo crear esos archivos.

Dependiendo en que quieras cambiar, necesitarás tu propia copia del archivo de configuración i3, Xresources, o ambos. Si estás buscando cambiar el aspecto de Regolith, Xresources quizás sea todo lo que necesites. Si quieres actualizar o agregar atajos de teclado o cambiar componentes, es muy probable que necesites montar el archivo de configuración i3.

## Configuración i3

1. Copia el archivo de configuración i3 por defecto en tu directorio de usuario:
```
$ mkdir -p ~/.config/regolith/i3
$ cp /etc/regolith/i3/config ~/.config/regolith/i3/config
```
2. Cierra sesión y vuelve a iniciarla. La sesión de Regolith automaticamente detectara tu archivo de usuario montado y lo usará en lugar del archivo por defecto en `/etc/regolith/i3`.

### Verificar el Cambio

1. Verifica corriendo `i3 --moreversion` y chequeando el archivo de configuración que se imprime en pantalla. Debería ser la copia que recien creamos. Si no lo es, asegurate de que la ruta sea la correcta. Debe ser exactamente `~/.config/regolith/i3/config` para que Regolith la cargue.

## Estilos de Regolith

1. Copia la raiz del archivo Xresource de Regolith en tu directorio de usuario:
```
$ cp /etc/regolith/styles/root ~/.Xresources-regolith
```
2. Cierra sesión y vuelve a iniciarla. La sesión de Regolith automaticamente detectara tu archivo de usuario montado y lo usará en lugar del archivo por defecto en `/etc/regolith/styles`.

Nota que este archivo raiz es una simple referencia a otros estilos que están separados por aquello que están diseñados para estilizar. Por ejemplo, si quieres personalizar el aspecto de i3, también necesitarás una copia de `/etc/regolith/styles/i3-wm` en tu directorio de usuario y luego actualizar la referencia al nuevo archivo en tu `~/.Xresources-regolith`.
