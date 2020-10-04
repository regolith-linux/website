---
title: "Cambia la Brecha entre Ventanas por Defecto"
weight: 16
description: >
  Cambia los pixeles entre ventanas.
---

Como la mayoría de las configuraciones en Regolith, el tamaño de la brecha de i3-gaps puede ser ajustada a traves de Xresources ([Ver aquí](../../Reference/xresources) todas las definiciones de Xresource).

1. Crea o agrega el siguiente valor a tu archivo `~/.config/regolith/Xresources`:
```
i3-wm.gaps.inner.size: 20
```
<sub>En este ejemplo estamos ajustando la brecha por defecto a 20 pixeles.</sub>

2. Recarga la configuración de Xresources:
```bash
$ regolith-look refresh
```

# Lectura Complementaria

Vea la [página de referencia para configuraciones](../../reference/configurations) para más detalles sobre los archivos de configuración en Regolith.
