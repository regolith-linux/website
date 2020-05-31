---
title: "Componentes"
linkTitle: "Componentes"
weight: 4
description: >
  Cambia los componentes IU que hacen a Regolith.
---

Como mencionamos previamente, Regolith es una colección de componentes open-source ya existentes que son integrados en un entorno de escritorio. Dado a los estándares sobre cómo los componentes IU deberían comunicarse y años de integración entre componentes, para la mayoría de los casos es simple cambiar partes de la IU por otras.

La siguiente tabla lista cada componente IU y las notas respecto a su mutabilidad:

| Componente IU            | Alternativas           | Intercambiable |
|-------------------|-----------------|------|
| Xorg   | Desconocido        | Desconocido |
| i3-gaps            | i3-wm, otros    | Dificultoso pero posible |
| i3bar      | Polybar, lemonbar, muchos otros.  | Si, el archivo de configuración i3 se cambia para cargar una barra diferente. |
| i3xrocks | i3blocks, barista, muchos otros. | Si, el archivo de configuración i3 se cambia para cargar un programa de estado diferente. |
| Rofication | Dunst, gnome-flashback | Si, el archivo de configuración i3 se configura para cargar el backend de notificaciones y la IU Rofi, e i3xrocks se configura para cargar el blocket. |
| Remontoire | Conky | Si, el archivo de configuración i3 se cambia para cargar un programa de ayuda diferente. |
| gdm3 | lightdm, sddm, xdm, otros. | Esto es configurado en Ubuntu. Instalar un gestor de sesiones diferente debería presentar una entrada para especificar cual usar. |
| gnome-flashback | Ninguna | No | 

Dada la amplitud del tópico, no hay mas detalles disponibles aquí. Experimentando con distintos componentes IU es una manera divertida de aprender más sobre las internas del sistema operativo. Se recomienda primero experimentar en una MV corriendo Regolith para evitar romper tu ambiente de trabajo.