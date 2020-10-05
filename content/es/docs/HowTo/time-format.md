---
title: "Cambiar el Formato de la Fecha y Hora en la Barra"
weight: 4
description: >
  Cambia el formato de la fecha/hora en la barra.
---

El formato de tiempo (12 o 24 horas) puede ser especificado en Configuración:
<img class="shadow m-5" src="../regolith-screenshot-settings-time-format.png" width="640px"/>

El formato de la fecha puede ser especificado seleccionando la región apropiada en Configuración. Una vista previa del formato de la fecha se muestra, y cerrando e iniciando sesión de nuevo es requerido para que los cambios tomen efecto.
<img class="shadow m-5" src="../regolith-screenshot-settings-region.png" width="640px"/>

Los formatos de fecha y hora también pueden ser configurados explicitamente a traves de Xresources. Para hacerlo, sobreescribe la llave Xresource `i3xrocks.date.format2`. Mira [Sobreescribir Xresource](../override-xres) para más detalles. La especificación de formato para la fecha es simplemente los argumentos que serán pasados al comando `date`en la línea de comandos. Por ejemplo, para mostrar el año con 4 dígitos, especifica `+%Y`.
