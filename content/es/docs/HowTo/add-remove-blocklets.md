---
title: "Cambiar los Indicadores de Estado de la Barra"
weight: 5
description: >
  Haz cambios en los indicadores de estado en la barra.
---

# Agregando o Removiendo indicadores de estado

## Buscando Indicadores de Estado

```bash
$ apt search i3xrocks-
```

## Instalando un Indicador de Estado

```bash
$ sudo apt install i3xrocks-memory
$ regolith-look refresh
```

# Personalización de la Barra

Cada indicador de estado es controlado por un archivo. El orden de los nombres de los archivos mapea la posición del indicador de estado en la barra. Entonces por ejemplo, un archivo que comience con `10_` va a aparecer antes que un archivo comenzado en `20_`. Dentro cada archivo está contenida la información que i3xrocks usa para ejecutar un script que finalmente va a retornar la información que vas a ver en la barra. Algunos de los indicadores de estados tienen parametros de configuración que pueden ser ajustados a tus gustos. Por ejemplo, si preferirías que el estado de la batería cambie más frecuentemente, se puede modificar el valor de sondeo. Lo primero que hay que hacer en orden para personalizar la barra es copiar los indicadores que quieres ver de `/etc/regolith/i3xrocks/conf.d` a `~/.config/regolith/i3xrocks/conf.d`. Una vez que los archivos hayan sido añadidos en `~/.config/regolith/i3xrocks/conf.d`, i3xrocks ignorará los archivos por defecto en `/etc/regolith/i3xrocks/conf.d`. Cada archivo en `~/.config/regolith/i3xrocks/conf.d` puede ser modificado cómo quieras. Para cambiar el orden de los indicadores en la barra, simplemente cambia el nombre de los archivos con el orden que tu prefieras.

Una vez que hayas hecho tus cambios, refrescar la sesión causará que la barra se actualice basada en tu nueva configuración.

Por ejemplo, para cambiar el orden de la batería y el bloque de tráfico de red en la barra y no mostrar las notificaciones, ejecuta los siguientes pasos:

```bash
$ ls /etc/regolith/i3xrocks/conf.d
01_setup  
30_net-traffic  
80_battery
80_rofication     
90_time
$ mkdir -p ~/.config/regolith/i3xrocks/conf.d
$ cd /etc/regolith/i3xrocks/conf.d
$ cp 01_setup ~/.config/regolith/i3xrocks/conf.d/01_setup
$ cp 80_battery ~/.config/regolith/i3xrocks/conf.d/30_battery # Nota el cambio en el nombre del archivo
$ cp 30_net-traffic ~/.config/regolith/i3xrocks/conf.d/80_net-traffic
$ regolith-look refresh
```

Si algún bloque de configuración existe en el directorio de usuario `~/.config/regolith/i3xrocks/conf.d`, entonces las configuraciones por defecto en `/etc/regolith/i3xrocks/conf.d` seran ignoradas.

# Lectura Complementaria

Mira la [página de referencia para configuraciones](../../reference/configurations) para más detalles sobre los archivos de configuración en Regolith.
