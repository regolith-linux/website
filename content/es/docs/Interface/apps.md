---
title: "Trabajando con Aplicaciones"
linkTitle: "Trabajando con Aplicaciones"
weight: 1
description: >
  Conceptos y consejos para trabajar con aplicaciones en Regolith.
---

Como se mencionó en la sección [Primeros Pasos](../../getting-started/basics), <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">space</span></span> causa que i3 ejecute Rofi para presnetar una lista de aplicaciones. Una vez lanzada, la aplicación seleccionada abrirá una ventana en el espacio de trabajo actualmente activo. Si ya hay otras ventanas presentes en el espacio de trabajo, serán ajustadas en tamaño para permitir que la nueva ventana sea úbicada sin solapar al resto de las ya existentes ventanas.

## Disposición de Ventanas

Se puede usar <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">backspace</span></span> para alternar entre los modos de disposición vertical u horizontal, que se van a aplicar a la *siguiente aplicación lanzada*. En este sentido, las ventanas en un espacio de trabajo pueden dividir la pantalla en porciones relativas a la importancia deseada del usuario. Un borde azul aparecera debajo o a la derecha de la ventana, para indicar el modo de disposición actual.

En adición a alternar la orientación de la disposición, las ventanas ya existentes pueden ser movidas en relación a sus vecinas con <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">shift</span> <span class="badge badge-warning">↑ ↓ ← →</span></span> (teclas de flechas) o con las teclas de flechas estilo VIM <span class="badge badge-warning">k j h l</span>. O, <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">tab</span></span> y <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">shift</span> <span class="badge badge-warning">tab</span></span> puede ser usado para moverse atrás y adelante entre los espacios de trabajo activos.

Las ventanas también pueden ser movidas a otros espacios de trabajo directamente. La barra indicará todos los espacios de trabajo activos como también el espacio de trabajo en foco. <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">shift</span> <span class="badge badge-warning">[0-9]</span></span> causara que la ventana en foco se mueva al espacio de trabajo del número seleccionado.

Los usuarios pueden navegar hacia ventanas a traves de <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">[0-9]</span></span> pero también pueden navegar directamente a una ventana especifica con <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">ctrl</span> <span class="badge badge-warning">space</span></span>.

## Cerrar una Aplicación.

Cualquier aplicación puede ser cerrada de manera segura a traves de <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">shift</span> <span class="badge badge-warning">q</span></span>. Las aplicaciones bloqueadas o que no respondan de alguna manera pueden ser matadas con <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">alt</span> <span class="badge badge-warning">q</span></span>.
