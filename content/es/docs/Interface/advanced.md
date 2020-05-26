---
title: "Avanzado"
linkTitle: "Avanzado"
weight: 4
description: >
  Tópicos avanzados para la interfaz de Regolith
---

## i3bar

La visibilidad de la barra puede ser alternada con <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">i</span></span>. Esto puede ser útil cuando se necesita remover todas las distracciones y dedicar el 100% de la pantalla a una o más aplicaciones en tu espacio de trabajo. Otra manera de darle a una aplicación un uso completo de la pantalla es presionar <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">f</span></span> para causar que la aplicación activa entre en modo de pantalla completa.

## i3-wm Modo de Disposición

i3-wm ofrece algunos modos distintos de disposición. Se puede usar <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">t</span></span> para alternar entre los modos de separación en pestañas, horizontal y vertical.

## Salvar y Restaurar la Posición de las Ventanas

[Una herramienta](https://github.com/regolith-linux/i3-snapshot) para salvar y cargar la disposición de las ventanas, <code>i3-snapshot</code>, se integro en Regolith 1.3. Presionando <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">,</span></span> guardará la actual disposición de las ventanas en un archivo en el directorio <code>/tmp</code>. <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">,</span></span> recuperará esa disposición. <code>i3-snapshot</code> está destinado para casos de uso en los que cambios del monitor resulten en que las disposiciones sean aleatorias. No es un reemplazo para <code>[i3-save-tree](https://i3wm.org/docs/layout-saving.html)</code> ya que usa identificadores de ventanas que no sobreviven a traves de X sesiones, ni tampoco ofrece una manera de posicionar las aplicaciones lanzadas en disposiciones especificas.