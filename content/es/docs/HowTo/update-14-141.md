---
title: "Actualizar Regolith Linux 1.4 a 1.4.1"
weight: 9
description: >
  Actualizando una instalación ISO Regolith Linux 1.4 a 1.4.1.
---

Si instalaste Regolith a traves del ISO, algunos cambios menores fueron hechos para corregir errores encontrados en R1.4. La mayoría de los arreglos se instalarán automaticamente aplicando las actualizaciones de paquetes, de todas maneras algunas veces tiene que ser realizado manualmente.

## Eliminar controlador del panel táctil obsoleto.

Un controlador obsoleto fue incluido por error con el ISO de instalación de Regolith 1.4 que conflictúa con la configuración de panel táctil de GNOME. Sigue estos pasos para arreglar el panel táctil:

```bash
$ sudo apt remove xserver-xorg-input-synaptics
```

## Agrega la secuencia de arranque Regolith

La publicación del ISO ahora incluye una animación de arranque sin marca, en lugar de quedarse con la experiencia de marca de Ubuntu por defecto. Actualizando este téma de arranque (También conocido como tema Plymouth) también habilita a los usuarios a ingresar una contraseña si han configurado un sistema de archivos encriptado.

```bash
$ sudo apt install plymouth-theme-regolith
$ sudo update-alternatives --config default.plymouth
```

Desde la entrada en la terminal asegurate de que la configuración de Regolith esté seleccionada.
