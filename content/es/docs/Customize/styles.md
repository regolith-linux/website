---
title: "Estilos"
linkTitle: "Estilos"
weight: 2
description: >
  Detalles sobre los estilos en Regolith.
---

Como dejamos claro en el [leeme del repositorio](https://github.com/regolith-linux/regolith-styles), los estilos de Regolith son una convención por la cual un conjunto de archivos que definen pares clave/valor son cargados en la memoria y pueden ser consultados por `xrdb` o `xrescat`. Xresources emplea el [preprocesador de C](https://en.wikipedia.org/wiki/C_preprocessor) para permitir comportamientos complejos tales como incluir archivos, definir constantes y expresiones condicionales. En Regolith, solo se usan dos directivas del preprocesador : `#include` y `#define`. Las declaraciones `#include` se usan para referenciar otros archivos. Colecciones o archivos llamados `looks` fueron cubiertos en la sección previa de esta guía. Las declaraciones `#define` simplemente permiten que un valor simbólico pueda ser reemplazado por un valor literal, como definir una variable.

## Archivos Xresource de Definición

Para maximizar el re-uso de la información de temas en Regolith, los Xresources son divididos en dos categorías o archivos: archivos de definición y archivos de aplicación. Los archivos de definición hae un uso más intensivo de la directiva `define`. Esencialmente ellos enlazan una clave abstracta, tal como "azul" o "fuente de terminal" a un valor literal, tal como `#0000FF` o `Source Code Pro Medium`. Cuando se hacen cambios a los archivos, se espera que esas definiciones cambien. El usuario querrá especificar un conjunto distinto de íconos, o fuente, y lo hará modificando o creando un nuevo archivo de definición. Una vez que el archivo es creado, necesita ser referenciado por un archivo Xresource de alto nivel en `~/Xresource-regolith`. 

{{% pageinfo %}}

Nota que cuando referencias otros archivos en Xresources a traves de la directiva `include`, atajos tales como `$HOME` y `~/` no están disponibles. Se requieren rutas absolutas.
{{% /pageinfo %}}

## Archivos Xresource de Aplicación

Como se mencionó previamente, en `/etc/regolith/styles/` viven una cantidad de Xresources, incluyendo aquellos para aplicaciones especificas tales como `st` o `i3-wm`. Abriendo esos archivos mostrará un mapeo de las claves abstractas provistas por los archivos de definición a claves específicas de aplicación. De esta manera, la descripción general del aspecto puede ser mapeada a cualquier componente IU o aplicación que pueda leer de Xresources.

## Orden de Carga

El script de inició de la sesión `i3-gnome-flashback` chequeará por el primer archivo Xresources que encuentre en el siguiente orden:
1. `~/.Xresources-regolith`
2. `/etc/regolith/styles/root`

Además de un archivo Xresource de Regolith, `~/.Xresources` también será cargada si existe en el inició de la sesión.

Luego de cargar un archivo Xresource raíz, el script de inicio de sesión combina cualquier entrada enconrada en el archivo `~/.config/regolith/Xresources`. Este archivo provee una manera simple de sobre-escribir algunos pocos valores sin tener que copiar el conjunto entero de definiciones de recursos.

## Recargando Xresources

El comando `regolith-look` puede ser usado para recargar todas las entradas Xresource tal como son cargadas durante la inicialización de la sesión:
```bash
$ regolith-look refresh
```

De manera alternativa, el comando `xrdb` puede ser usado para refrescar archivos Xresource especificos luego de que hayan sido cambiados. Por ejemplo, para recargar el archivo Xresource del usuario corre:
```bash
$ xrdb -merge ~/.Xresources-regolith
```

### Verificación

Puedes comprobar que un cambio fue hecho a tu archivo Xresource consultandoló desde la línea de comándos. Si se realizó un cambio a la clave `foo.bar` entonces el siguiente comando retornará su valor actual, o `empty` si no está definido:
```bash
$ xrescat foo.bar empty
```

