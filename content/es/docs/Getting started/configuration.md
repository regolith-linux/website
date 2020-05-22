---
title: "Configuración"
linkTitle: "Configuración"
weight: 3
description: >
  Haz cambios a la manera en la que Regolith se vé y comporta.
---

## Fondo de Pantalla

El fondo de pantalla puede ser cambiado a traves de `Configuración`, o <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">c</span></span> yendo a la pestaña de `Background` y seleccionando la imagen o color preferidos.

<img class="shadow m-5" src="../regolith-screenshot-settings-wallpaper.png" width="640px"/>

## Indicadores de la Barra de Estado

Indicadores de estado tales como carga del CPU, fecha y hora, notificaciones, clima, y otra información del sistema pueden ser agregados o eliminados instalando sus paquetes. Por ejemplo, para mostrar un indicador de estado para la batería de tu laptop, simplemente corre `sudo apt install i3xrocks-battery` y luego refresca la sesión. Para saber que indicadores están disponibles, corre `apt search ^i3xrocks-` o busca "i3xrocks-" en la GUI de tu gestor de paquetes favorito, como [Synaptic](https://help.ubuntu.com/community/SynapticHowto). Aprende más de cómo configurar los indicadores de estado en este How-To.

<img class="shadow m-5" src="../regolith-screenshot-synaptic-search.png" width="480px"/>

## Looks

Colores, fondo de pantalla, ventanas, disposiciones de la barra, y otros factores visuales están empaquetados juntos en Regolith y se llaman "looks". Looks provee una manera simple de cambiar la apariencia entera del escritorio con unos pocos comandos. En este momento, looks solo puede ser configurado a traves de la linea de comandos, pero hay un script que maneja los detalles por ti. Como los indicadores de estado de la barra, los looks están empaquetados y son instalados y eliminados como cualquier otro paquete de software. Por convención, los paquetes Look usan el siguiente formato nominal: `regolith-look-<nombre>`. `apt` o un gestor de paquetes GUI pueden ser usados para buscar los looks disponibles. La herramienta `regolith-look` puede ser usada para cambiar los looks y refrescar la sesión activa con el look seleccionado. Aquí hay un ejemplo que cambia el look `cahuella` que viene configurado por defecto en Regolith 1.3:

```bash
$ apt search ^regolith-look-
...
regolith-look-cahuella/bionic,now 2.4.9 amd64
...
$ sudo apt install regolith-look-cahuella
$ regolith-look set cahuella
$ regolith-look refresh
```

## Atajos

El cambio de atajo más común es la tecla super. Regolith usa Xresources como fuente canónica de la verdad para los ajustes, que son leidos por varios componentes de la IU. La tabla de teclas Xresources abiertas para la configuración del usuario puede ser encontrada aquí. Para cambiar la vinculación de `super` con la tecla `windows` que viene por defecto por la tecla `alt`, agrega la siguiente linea al archivo `~/.config/regolith/Xresources`:

```bash
i3-wm.mod: Mod1
i3-wm.alt: Mod4
```

Para cambiar otros atajos, se necesita crear una copia del usuario del archivo `config` de i3. Mira el [How-To montar configuraciones](../../howto/stage-configs) para aprender más.

Nota: GNOME también tiene su propio conjunto de atajos. Cuando la sesión de Regolith es inicializada por primera vez, los atajos de GNOME que estén en conflicto son borrados de los ajustes de usuario. Los atajos de GNOME pueden ser administrados en `Configuración`.

<img class="shadow m-5" src="../regolith-screenshot-settings-keybindings.png" width="640px"/>

## Casi Todo lo Demás

`Configuración` o el panel de control de GNOME como también es conocido, es la herramienta para configurar región, fecha, pantalla, redes, y varias otras configuraciones. Lanzalo a traves del lanzador de aplicaciones con <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">space</span></span>, tipea 'configuracion', y presiona `enter` para lanzar la aplicación. O, el atajo directo es <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">c</span></span>.

## Lectura Avanzada

Para profundizar más visita la sección en [Personalización](../../customize), averigua que [How-To](../../howto) están disponibles, o lee las [referencias Xresource](../../reference/xresources). Conviertete en un usuario experto de i3 leyendo la [guía de usuario](https://i3wm.org/docs/userguide.html).