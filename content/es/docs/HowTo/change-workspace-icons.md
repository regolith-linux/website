---
title: "Cambiar los Íconos del Espacio de Trabajo"
weight: 7
description: >
  Aprende cómo configurar íconos personalizados para cada espacio de trabajo.
---

Agregar iconos a los espacios de trabajo puede darle a tu escritorio un aspecto bueno y funcional.

### Encontrando Íconos

Los íconos en realidad son caracteres de las fuentes instaladas por Regolith looks. Cada aspecto viene con una fuente de ícono especifica. La fuente del ícono es definida en la variable `typeface_bar` en el archivo de configuración `typeface`. El aspecto por defecto Cahuella usa la fuente _Material Design Icons_ (ver archivo `/etc/regolith/styles/cahuella/typeface`). 

Puedes navegar la fuente del ícono usando la aplicación [Mapa de Caracteres de Gnome](https://wiki.gnome.org/action/show/Apps/Gucharmap?action=show&redirect=Gucharmap) (paquete `gucharmap`):

1. Abre el Mapa de Caracteres de Gnome.
2. Selecciona tu fuente de ícono en la combinación de arriba a la izquierda.
3. En el panel de _script_ selecciona _Common_.
4. Desliza hacia abajo el panel de caracteres hasta que encuentres los íconos.
5. Haz doble click en el ícono que estás buscando para usar y presiona el botón _Copiar_ (abajo a la derecha).

**Tip:** los íconos están ordenados alfabeticamente.

### Montando archivos y cambiando íconos

Sigue los siguientes pasos para editar las definiciones de Xresource de los íconos de los espacios de trabajo usados por i3:

1. Monta tus archivos de Estilos Xresources Regolith, cómo se [describe acá](`../stage-configs`).
2. Monta el archivo Xresource `/etc/regolith/styles/i3-wm` en tu directorio de usuario, y asegurate de que tu copia de usuario del archivo Xresource haga un `#include` de esta copia.
3. Edita tu copia de tu archivo de estilos `i3-wm`. Encuentra la definición de nombre de espacio de trabajo que comienza con `i3-wm.workspace.01.name:` y cambia el último argumento de la función `WORKSPACE_NAME` de el valor por defecto `glyph` a tu ícono simplemente copiando y pegando el caracter del ícono. El caracter del ícono quizas no sea mostrado apropiadamente si tu editor no soporta la fuente del ícono, pero funcionará bien en la barra.
4. Repite lo mismo para todos los espacios de trabajo requeridos.
5. Luego de guardar este archivo cierra la sesión y vuelve a iniciarla para ver el cambio.

### Agrega soporte para fuentes de íconos en los editores de texto

Atom:

- Concatena el nombre de la fuente del ícono en `Preferencias > Editor > Fuentes`.
- Ejemplo: `Menlo, Consolas, DejaVu Sans Mono, monospace, Material Design Icons`

# Lectura Complementaria

Vea la [página de referencia para configuraciones](../../reference/configurations) para más detalles sobre los archivos de configuración en Regolith.
