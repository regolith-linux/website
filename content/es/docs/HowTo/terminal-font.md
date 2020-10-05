---
title: "Cambia el Tamaño de la Fuente en la Terminal"
weight: 14
description: >
  Cambia la fuente usada en la terminal.
---

1. Crea o agrega el siguiente valor en tu archivo  `~/.config/regolith/Xresources`:
```bash
gnome.terminal.font:	JetBrains Mono 14
```
2. Recarga la configuración Xresource:
```bash
$ regolith-look refresh
```
3. Abre una nueva terminal para ver si el cambio tomó efecto.
