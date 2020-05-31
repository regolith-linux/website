---
title: "Compositores"
linkTitle: "Compositores"
weight: 3
description: >
  Configura los efectos visuales en Regolith.
---

{{% pageinfo %}}
Pon especial atención a esta sección si estás experimentando fallos visuales raros o un rendimiento gráfico bajo.
{{% /pageinfo %}}

Como se mencionó previamente, un compositor es un componente IU que agrega efectos visuales a las ventanas antes de que sean renderizadas en pantalla. Muchos entornos de escritorio integran un compositor directamente en el gestor de ventanas, haciendo que sea difícil de cambiar o deshabilitar. En Regolith, el compositor es definido como un "punto de extensión" conectable en el sistema de empaquetado. Esto quiere decir que los compositores pueden ser cambiados de manera sencilla instalando los paquetes que los contengan. El sistema de empaquetado subyacente se encargará de que no haya conflictos y de que todas las dependencias de determinado compositor también sean instaladas.

## Encontrando Compositores Disponibles

El siguiente comando listará todos los compositores configurados para trabajar con Regolith:
```bash
apt search regolith-compositor-
```

Por lo menos los siguientes tres compositores deberían estar disponibles:

| Nombre del Paquete            | Backend           | Descripción |
|-------------------|-----------------|------|
| regolith-compositor-compton-glx   | [Compton](https://github.com/yshui/picom)        | Es el compositor por defecto para Regolith. Este compositor es moderno, mantenido, y maneja el desgarro de pantalla.|
| regolith-compositor-xcompmgr            | xcompmgr     | Un compositor antiguo que puede ofrecer un rendimiento más consistente si `compton-glx` te da problemas |
| regolith-compositor-none      |   | Un paquete no operativo que no corre ningún Compositor. Lo mejor para un rendimiento absoluto de la IU, pagando el precio de los efectos visuales. |

## Instalando un Compositor

{{% pageinfo %}}
Debido a la manera en la que el compositor es gestionado por i3-wm, debes cerrar la sesión y volver a iniciarla para que los cambios del compositor surtan efecto. Reiniciar i3 no es suficiente.
{{% /pageinfo %}}

Corre el siguiente comando de instalación de paquete para cambiar el compositor. En este caso correremos `xcompmgr`:
```bash
$ apt install regolith-compositor-xcompmgr
```

Inicia sesión nuevamente y el compositor debería estar cargado. Puedes verificarlo chequeando la lista de procesos en busca de `xcompmgr`:
```bash
$ ps aux | grep xcompmgr
```

## Sobrescribiendo la Configuración de un Compositor

### Compton/Picom

Para proveer tu propia configuración de compositor Compton/Picom, copia la configuración por defecto o crea la tuya propia y guardalá `~/.config/regolith/compton/config`. En el próximo inicio de sesión será cargada en lugar de la configuración por defecto `/etc/regolith/compton/config`.