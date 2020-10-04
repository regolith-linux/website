---
title: "Cambia el Sistema de Notificaciones"
weight: 10
description: >
  Deshabilita Rofication y agrega otro sistema de notificaciones.
---

Regolith viene con un sistema de notificaciones llamado [Rofication](https://github.com/DaveDavenport/Rofication). Este sistema está diseñado para trabajar en segundo plano y no usar pop-ups cómo manera de alertar de una nueva notificación al usuario. En su lugar, un pequeño item en la barra muestra el corriente número de notificaciones sin leer y un dialogo puede ser activado para interactuar con el contenido de las corrientes notificaciones. Esta página describe una manera de instalar un sistema de notificaciones alternativo que trabaja de una manera más tradicional y esperada.


Usaremos [dunst](https://dunst-project.org/) como ejemplo pero se pueden seguir pasos similares para casi cualquier otro componente de notificaciones.

1. Reemplace `rofication` con `dunst`:
```bash
$ sudo apt install dunst
$ sudo apt purge regolith-rofication
```
2. Cierre sesión y vuelva a iniciarla.
3. Pruebe sus notificaciones con `notify-send test123`. Debería ver un pop-up de `dunst`.
