---
title: "Soporte para Multiple Baterías"
weight: 3
description: >
  Muestra el estado de las baterías por instancia.
---

Por defecto el estado de la batería primaria va a ser mostrado en la barra i3-bar. Para algunas laptops que tienen múltiples baterías, por ejemplo _ThinkPad_, vas a querer ver ambas baterías. Para hacerlo, sigue los pasos:

1. Monta tu propio archivo de configuración i3 [(tutorial)](../stage-configs), y luego abre`~/.config/regolith/i3xrocks/conf.d/80_battery` en el editor de tu preferencia.
2. Encuentra la línea que corresponde al blocket de la batería:
```conf
...
# Battery indicator
#
# Displays total percentage charge left of specified battery.
[battery]
interval=30
# instance=BAT0
```
3. Lista todas las instancias de batería corriendo en tu maquina ejecutando:
```sh
ls /sys/class/power_supply/

# AC BAT0 BAT1
```
4. Actualiza el archivo de configuración montado para que tenga un blocket nuevo como el siguiente:
```conf
...
# Battery indicator
#
# Displays total percentage charge left of specified battery.
[battery]
interval=30
instance=BAT0

[battery]
interval=30
instance=BAT1
```


# Lectura Complementaria

Vea la [página de referencia para configuraciones](../../reference/configurations) para más detalles sobre los archivos de configuración en Regolith.
