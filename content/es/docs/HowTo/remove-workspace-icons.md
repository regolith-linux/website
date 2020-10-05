---
title: "Cambiar las Etiquetas de los Espacios de Trabajo"
weight: 7
description: >
  Cambiar los nombres de los espacios de trabajo como son mostrados en la barra.
---

1. Necesitarás montar los archivos de Estilos Xresource Regolith cómo [se describe aqui](../stage-configs).
2. Entonces monta el archivo Xresource `/etc/regolith/styles/i3-wm` en tu directorio de usuario, y asegurate de que tu copia de usuario del archivo Xresource tenga un `#include` de esta copia.
3. Modifica los estilos a tu preferencia.
4. Luego de salvar el archivo de estilos cierra la sesión y vuelve a iniciarla para ver el cambio.

### Elimina todo menos el número del espacio de trabajo

Sigue los siguientes pasos para editar las definiciones Xresource de las etiquetas de espacios de trabajo usadas por i3:

Edita tu copia de el archivo de estilos de `i3-wm`. Este archivo usa macros del estilo C para generar el marcado Pango para la etiqueta de cada espacio de trabajo. Hay varias maneras de cambiar los macros para quitar los íconos, pero esta manera es la mas concisa. Reemplaza:

```
#define WORKSPACE_NAME(INDEX, FONT, COLOR, GLYPH) INDEX:<span font_desc=FONT> INDEX </span><span foreground=COLOR>GLYPH</span>
```
con:
```
#define WORKSPACE_NAME(INDEX, FONT, COLOR, GLYPH) 
```

### Creando etiquetas de espacio de trabajo

Algunos usuarios prefieren titular sus espacios de trabajo basados en un tema, tales como `terminal`, `web`, etc. Para hacer esto, modifica tu copia de usuario de `/etc/regolith/styles/i3-wm` de manera similar:

```
i3-wm.workspace.01.name: 1: Terminal
i3-wm.workspace.02.name: 2: Web
i3-wm.workspace.03.name: 3: Chat
```
