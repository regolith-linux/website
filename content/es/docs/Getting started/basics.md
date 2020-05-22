---
title: "Conceptos Básicos"
linkTitle: "Conceptos Básicos"
weight: 2
description: >
  Aprende las partes más importantes de Regolith primero.
---

Mientras en otras areas de la documentación cubrimos todo en mayor detalle, esta página cubre los conceptos más básicos.

## La Tecla Super

La mayoría de los atajos que vas a usar con Regolith empiezan con la tecla <span class="badge badge-warning">super</span>. Típicamente esta tecla dice "WIN" o tiene el logo de MS Windows en ella. En una Mac es la tecla Comando <span class="badge badge-warning">⌘</span>. A partir de aquí, esta tecla simplemente será nombrada como <span class="badge badge-warning">super</span> pero ten en cuenta que puedes cambiar qué botón físico tiene <span class="badge badge-warning">super</span> asignado en la configuración si así lo deseas.

## Lanzadores

Regolith provee varios lanzadores, que son la manera principal en la que vas a interactuar con tu sistema. Cada uno de esos lanzadores tiene un ver y sentir consistente pero provee acceso a una entidad específica. Los lanzadores por defecto son: Para aplicaciones <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">space</span></span>, comandos <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">shift</span> <span class="badge badge-warning">space</span></span>, notificaciones <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">n</span></span>, ventanas <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">ctrl</span> <span class="badge badge-warning">space</span></span>, y archivos <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">alt</span> <span class="badge badge-warning">space</span></span>.

### Lanza una Aplicación

Luego de ingresar, te vas a encontrar en una pantalla en blanco con la barra en el fondo de la pantalla y algunos atajos del teclado a la derecha. Para lanzar una aplicación, presiona <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">space</span></span> y va a aparecer un menu con todas las aplicaciones instaladas en el sistema. Si comienzas a escribir el nombre de una aplicación que deseas abrir, la lista va a comenzar a filtrarse con los nombres que coincidan. También puedes navegar a traves de la lista con las teclas de flechas.

<img class="shadow m-5" src="../screenshot-launcher.png" width="640px"/>

### Navega a una Ventana

Para enfocar en una aplicación abierta, el atajo <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">ctrl</span> <span class="badge badge-warning">space</span></span> puede ser usado para mostrar una ventana con todas las ventanas abiertas. Simplemente selecciona la ventana deseada y el sistema se moverá al area de trabajo que contenga la ventana y la pondrá en foco.

<img class="shadow m-5" src="../regolith-screenshot-window-nav2.png" width="640px"/>

### Encuentra y Abre un Archivo

Buscar un archivo en especifico en tu computadora local puede ser logrado en una variedad de maneras. Regolith provee una ventana de busqueda de archivos a traves de <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">alt</span> <span class="badge badge-warning">space</span></span> para rápidamente buscar y opcionalmente cargar un archivo con su aplicación por defecto. Si la ubicación del archivo excede el ancho de la ventana, <span class="text-nowrap"><span class="badge badge-warning">alt</span> <span class="badge badge-warning">.</span></span> alterna la justificación de texto. Presionar `enter` en una selección causará que el archivo sea invocado con el comando <code>xdg-open</code>.

<img class="shadow m-5" src="../regolith-file-search.png" width="640px"/>

### Terminal

La Terminal es una aplicación especial que tiene su propio atajo, <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">enter</span></span>.

### Navegador

El navegador de preferencia también es especial, y puede ser lanzado con <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">shift</span> <span class="badge badge-warning">enter</span></span>.

## Cerrar una Aplicación

<span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">shift</span> <span class="badge badge-warning">q</span></span> cerrará la aplicación en foco. Para aplicaciones que no se comportan del todo bien <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">alt</span> <span class="badge badge-warning">q</span></span> va a forzar el cierre de la aplicación en foco, pero ten en cuenta que cualquier información sin guardar es muy probable que se pierda.

## Cambiando Espacios de Trabajo

La principal manera de administrar como las aplicaciones ocupan la pantalla es mediante el uso de los espacios de trabajo. Un espacio de trabajo es en escencia un grupo de cero o más aplicaciones las cuales presentan ventanas en la mísma pantalla física. Los usuarios pueden cambiar espacios de trabajo para "ganar" más espacio para que las aplicaciones lo usen. Las ventanas pueden ser movidas entre espacios de trabajo. Los espacios de trabajo pueden estar atados a una pantalla física o movidos a otras pantallas si se necesita. Para cambiar espacios de trabajo, manten presionada la tecla <span class="badge badge-warning">super</span> y presiona alguna de las teclas de números. Esto navegará a ese espacio de trabajo. Si existe alguna ventana en un espacio de trabajo dado, se mostrará en la barra como estando activa. De este modo, refiriendose a la barra el usuario puede saber en que espacios de trabajo activos viven las aplicaciones.

Los espacios de trabajo tambien pueden ser paginados hacia atrás y adelante a traves de <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">tab</span></span> y <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">shift</span> <span class="badge badge-warning">tab</span></span>.

## Configurando el Sistema

La aplicación `Configuración` (también conocida como `gnome-control-center`) es la interfaz primaria para tareas comunes de configuración, tales como cambiar el fondo de pantalla, configurar la conexión wi-fi y bluetooth, configurar asociaciones de aplicaciones, y configurar usuarios. Esta aplicación puede ser lanzada a traves del atajo <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">c</span></span> o desde el Lanzador buscando `Configuración`

<img class="shadow m-5" src="../regolith-control-panel.png" width="640px"/>

## Lectura Avanzada

Más atajos están listados en <code>Remontoire</code>, la aplicación de atajos. Esta aplicación es cargada automaticamente en la primera sesión, pero no en los siguientes ingresos. La ventana puede ser mostrada en cualquier momento clickeando en el ícono <span class="badge badge-warning">i</span> en la barra, o presionando <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">shift</span> <span class="badge badge-warning">?</span></span>.