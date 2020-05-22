---
title: "Introducción"
linkTitle: "Introducción"
weight: 1
description: >
  ¿Qué es Regolith?
---

Regolith es una colección de componentes open-source que todos juntos forman una interfaz de propositos generales para usar una computadora, también conocida como *entorno de escritorio* [[1]](#footnotes). Muchos de los componentes de IU que se usan para construir Regolith son proyectos open-source independientes [[2]](#footnotes) que simplemente fueron integrados, empacados, y configurados para un flujo de trabajo y estética visual especificos. La mayoría de los entornos de escritorio estan optimizados para la facilidad-de-uso y familiaridad con sistemas opreativos comerciales tales como Windows de Microsoft o OS X de Apple. En contraste, Regolith provee una manera de interactuar con la computadora que está **optimizada para aumentar la productividad del usuario** y no intenta copiar viejos paradigmas de IU para familiaridad.

## El teclado, el mouse, y el monitor

Regolith pone énfasis en el dispositivo del teclado por encima del mouse, en relación a la mayoría de los otros entornos de escritorio. Esto es por una razón: Productividad. Especificamente, la cantidad de tiempo que toma presionar un atajo en el teclado es menor a la cantidad de tiempo que toma llevar tu mano del teclado al mouse, ejecutar una serie de clicks para obtener la acción deseada, y volver a situar tus manos en el teclado. Si bien esta diferencia de tiempo es pequeña, se acumula rápidamente debido a las interacciones frecuentes.

Pero este beneficio viene con un costo de una sola vez: Aprender los atajos. A cambio de este visible costo, el usuario es subsecuentemente capaz de realizar acciones generales de la computadora de manera más rápida y con menos pensamiento en primer plano. Adicionalmente, al empujar más de las acciones de la computadora en la memoria del usuario, más de la interfaz visual de la computadora puede ser dedicada a las aplicaciones del usuario. Puesto de otra manera, la interfaz de Regolith dedica más ancho de banda a la aplicación del usuario y menos a la administración en general de la computadora. Y debido a que en ultima instancia la productividad del usuario es un resultado de la interacción con *aplicaciones*, la productividad general del usuario es aumentada. Este es un beneficio subjetivo, y puede ser más o menos importante para el usuario.

## Ventanas Tiling

Quizás el componente más impactante para el usuario en Regolith es el administrador de ventanas, un proyecto open-source llamado `i3-gaps` (que es una personalización de `i3-wm`). Este programa organiza las ventanas en *tiles* [[3]](#footnotes). Por defecto, `i3-gaps` divide la pantalla en secciones para cada ventana, las cuales ocupan la totalidad de la pantalla. Para 2 ventanas, a ambas se le asigna una porción igual de la pantalla, y así subsecuentemente. Usando atajos, el usuario puede decirle a `i3-gaps` que les cambie el tamaño, mueva, y organizar las ventanas en otras maneras. Una ventaja clave de este acercamiento es que el usuario esta liberado del micro manejo de la disposición de las ventanas (al costo de tener que aprender los atajos).

## Lanzar Aplicaciones

Es común para los entornos de escritorio mostrar los lanzadores de aplicaciones a traves de la intefaz de usuario, en la forma de iconos y texto. Carpetas, puertos, y menues de contexto son usados para presentar una forma de menú al usuario. A pesar de parecer visualmente distintos, tienen una sola funcion: Lanzar una aplicación. Como con los atajos, en Regolith esta interfaz de usuario de lanzar aplicaciones está refinada y minimizada. Iconos de escritorio, paneles, y puertos no son usados. En su lugar, el usuario invoca el lanzador de aplicaciones que presenta un menú de aplicaciones ordenadas por su frecuencia de uso. El usuario puede comenzar a tipear el nombre o la función de la aplicación que tiene intención de cargar y la lista es filtrada acorde a lo que tipea. También, las aplicaciones frecuentemente usadas como la Terminal y el Navegador tienen atajos especificos. Con este tratamiento de la IU, no hay una sobrecarga fija en la pantalla para la presentación de los lanzadores de aplicaciones. Esto provee al usuario del beneficio de tener más espacio de pantalla dedicado a las aplicaciones.


## Administración del Sistema

Las computadoras modernas son máquinas complejas con muchos atributos observables. Sin embargo para la operación día-a-día, muchos de ellos pueden ser ignorados. Cada usuario tiene un subconjunto especifico de estados del sistema que le interesan, entonces no hay una sola configuración perfecta para todos los usuarios. Por defecto Regolith provee información de estado en-pantalla en la barra de tareas de los espacios de trabajo del usuario, ayuda de los atajos, utilización del CPU y la red, notificaciones, y la hora del sistema. El usuario puede configurar más o menos items a medida que lo necesite.

Sumado a la información transitoria del sistema provista en la barra, la configuración del sistema puede ser cambiada por el usuario a traves de la aplicación `Settings`. Este sistema de configuración es parte de GNOME, y provee un generoso conjunto de páginas de IU para configurar redes WI-FI, dispositivos Bluetooth, pantallas, y otros dispositivos.

### Archivos de Configuración

Mientras que la mayoría de las tareas más comunes del manejo y administración del sistema se gestionan mediante interfaces gráficas tales como `Settings`, las configuraciónes de bajo-nivel se realizan editando los archivos de configuración que son instalados como parte de Regolith. Por ejemplo, para cambiar que información es mostrada en la barra, o retocar el ancho del borde de las ventanas, se requiere editar los archivos de configuración. Esas personalizaciones están cubiertas en la [sección de personalización](/docs/customize/).

## ¿Y ahora a donde?

* [Primeros Pasos](../getting-started/): Da tus primeros pasos con Regolith
* [La Interfaz](../interface/): Entiende como llevar a cabo acciones en Regolith
* [Atajos](../reference/keybindings/): Aprende los atajos

### Footnotes 

1: El termino viene de un tiempo en el que las computadoras eran enormes y eran usadas en escritorios. Ya no es el caso, pero seguimos usando el término. Un *entorno de escritorio* es aplicable generalmente a cualquier computadora con un teclado, pantalla, y algún tipo de dispositivo para apuntar.

2: Ver [la página de interfaz](../interface/) para detalles especificos de como el componente de Regolith está compuesto.

3: No hay una traducción semánticamente correcta para lo que *tile* desea expresar. En el sentido literal significa *baldoza*, *placa*, *azulejo*, ó incluso *ficha*. 