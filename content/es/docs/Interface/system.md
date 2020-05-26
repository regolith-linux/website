---
title: "Configuración de Sistema"
linkTitle: "Configuración de Sistema"
weight: 3
description: >
  Aprende cómo cambiar ajustes en el escritorio Regolith.
---

## Centro de Control GNOME (también conocido como <code>Configuración</code>).

Una diferencia clave entre Regolith y otros ambientes descriptos como minimalistas es la integración del backend de ajustes GNOME. Esto provee una manera bien testeada, consistente, y amigable de configurar tu ambiente y computadora. Para cargar la aplicación de configuración, lanza "Configuración" desde Rofi o presiona <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">c</span></span>.

Configuración es una aplicación especial en Regolith que se lanza en modo flotante. Esto es porque típicamente cuando se cargan las configuraciones el usuario está enfocado en hacer un cambio especifico y luego volver a su trabajo. Una vez cargada usa las pestañas de selección a la izquierda de la ventana para seleccionar qué item deseas configurar.

## i3-wm (Gestor de Ventanas)

El gestor de ventanas i3 no es parte de GNOME y tampoco está disponible ver o cambiar su configuración desde el panel de control GNOME. En su lugar, el usuario debe editar el archivo `config` y recargar i3 para hacer los cambios. En Regolith, el archivo de configuración i3 está en <code>/etc/regolith/i3/config</code> y los usuarios pueden crear su propia copia del archivo que invalidará la que toma por defecto si la colocan en <code>~/.config/regolith/i3/config</code>.

Muchas cosas sobre Regolith pueden ser configuradas en el archivo de configuración de i3. Lo mejor es leer la [guía de usuario i3](https://i3wm.org/docs/userguide.html) para entender qué y cómo modificar este archivo.

{{% pageinfo %}}

Conservar a una copia del usuario del archivo de configuración i3 requiere más trabajo cuando se actualiza Regolith, ya que los cambios tienen que ser gestionados desde los archivos por defecto a la configuración del usuario para soportar las nuevas características en las versiones subsecuentes. Si es posible, es mejor basarse en la [sobreescritura de Xresource](../../howto/override-xres) para personalizar i3.
{{% /pageinfo %}}

## i3bar (Barra de Estado)

La configuración de i3bar está definida en el archivo de configuración i3 listado aquí arriba, pero la i3bar tiene su propia configuración para los items de estado. Para cambiar que información se muestra en la barra, el directorio de configuración es <code>/etc/regolith/i3xrocks/conf.d</code>. En este directorio hay un archivo por cada uno de los items de estado, aparte de `01_setup`. El número del prefijo indica en qué orden van a ser mostrados los bloques en la barra. [Mira aquí](../../howto/add-remove-blocklets) para información sobre personalizaciones.

## Aspecto

El aspecto de Regolith es configurado a través de Xresources, que se aloja en <code>/etc/regolith/styles/</code>. Este tópico se cubrirá en detalle en la sección de [Personalización](../../customize/) de la documentación.

## Sesión

Cuando inicialmente se carga Regolith, se corre un script que configura el sistema y lanza el <code>i3-wm</code>. Si bien no se recomienda modificar este script, puede proveer detalles de cómo está estructurado Regolith y cual es la política que implementa cuando carga la configuración. Este archivo puede ser visto en <code>/usr/bin/i3-gnome-flashback</code>. De hecho, este script puede ser considerado la semilla inicial de el proyecto Regolith y fue tomado de el proyecto [i3-gnome-flashback](https://github.com/deuill/i3-gnome-flashback).