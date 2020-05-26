---
title: "Notificaciones"
linkTitle: "Notificaciones"
weight: 2
description: >
  Detalles correspondientes a las notificaciones de escritorio.
---

Regolith 1.3 introduce la integración de [Rofication](https://github.com/DaveDavenport/Rofication) al ambiente. Versiones anteriores se basaban en un sistema de notificaciones integrado dentro de <code>gnome-flashback</code> pero la IU era distractiva. Rofication se vasa en un daemon de notificaciones y el font-end basado en Rofi. Un bloque en la barra muestra el número de notificaciones que tiene el usuario. Cuando se recibe una notificación nueva, este número se incrementa en 1. No hay otro tipo de alerta u otra IU que notifique al usuario del mensaje nuevo. Si se desea una IU de notificaciones más agresiva, se recomienda [dunst](https://dunst-project.org/).

## Administrando las Notificaciones

Al lado del icono de campana en la barra está el número de notificaciones actuales. Para verlas y borrarlas, presiona <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">n</span></span> y un menú aparecerá. Las notificaciones pueden ser leidas y luego borradas con <span class="badge badge-warning">delete</span> y la ventana de notificaciones puede ser cerrada con <span class="badge badge-warning">escape</span>. Todas las notificaciones de prioridad baja pueden ser eliminadas al mismo tiempo con <span class="text-nowrap"><span class="badge badge-warning">shift</span> <span class="badge badge-warning">delete</span></span> dentro del menú de notificaciones.