---
title: "Personalización"
linkTitle: "Personalización"
weight: 4
description: >
  Personaliza Regolith para que se ajuste a tus necesidades.
---
Regolith, como conjunto de componentes, no dispone de un archivo de configuración, formato o conjunto de convenciones uniforme. Se realizó un sinfín de esfuerzos para crear la mayor consistencia posible utilizando una infraestructura de configuración llave-valor utilizada a lo largo de toda la sesión conocida cómo [Xresources](https://wiki.debian.org/Xresources). Las preferencias de interfáz tales como colores y fuente son definidas en los archivos Xresource y luego leídas por los componentes tales como `Rofi` e `i3-wm`. Para la mayoría de los casos, Xresources puede usarse para cambios de alto nivel. Cambios de bajo nivel, como por ejemplo cambiar `i3bar` por `polybar` o `drun`  por `Rofi` requieren la remoción, instalación y configuración de otros paquetes.

{{% pageinfo %}}
Además del contenido en esta sección, lease los [tutoriales](../howto)] para ejemplos paso-a-paso de como personalizar Regolith.
{{% /pageinfo %}}

## Aspecto
El mayor grado de cambio en la manera que puede verse Regolith se llama "look". Esto aúna color, fuente, tema GTK e iconos todo junto en una unidad empaquetable conocida como `look`. Algunos looks son embalados en el PPA de Regolith, el que viene por defecto en R1.4 es llamado `lascaille`

## Estilos

Los <code>looks</code> de Regolith son una colección de definiciones de estilo que se empaquetan juntas en un todo cohesivo. Pero, ¿qué pasa si quieres cambiar y combinar aspectos de looks diferentes ó hacer pequeños cambios a un look ya existente? Bueno, los archivos Xresource que definen los looks pueden ser directamente modificados. Por ejemplo, para continuar usando el look Cahuella pero cambiando la fuente por defecto Source Code Pro a, digamos Ubuntu Mono, uno solo necesita modificar el archivo Xresource de fuente para especificar la nueva fuente (asumiendo que ya está instalada en el sistema).

## Compositores

Un compositor es un componente de escritorio que provee efectos visuales a las ventanas. Si bien no es necesario para que funcione el escritorio, provee al usuario con algunas pistas sobre la aplicación en foco, las transiciones, y otros efectos. La performance y el comportamiento de los compositores pueden variar dependiendo del hardware gráfico y las configuraciones de los controladores. Debido a esto, se prestó especial atención para que esto pueda ser fácilmente cambiado basado en las necesidades del usuario.

## Componentes

Un nivel más profundo de personalización es cambiar qué componentes se van a cargar y usar. Este es un tópico avanzado y requiere tanto de coraje para lidiar con lo inesperado como también conocimiento técnico general y algo de paciencia también.

## Paquetes

En última instancia Regolith es un conjunto de paquetes de Debian que existe como una colección de archivos en la computadora del usuario. Los paquetes pueden ser creados y alojados por cualquiera que que tenga la intención y la capacidad de crear una cuenta en la plataforma de lanzamiento y habilidad con empaquetado. Esta sección cubre los detalles de la estructura de paquetes de Regolith y consejos de como crear los tuyos propios.