---
title: "Cambia la Terminal por Defecto"
weight: 3
description: >
  Cambia que terminal Regolith carga por defecto.
---

La terminal por defecto que viene con Regolith R1.4 es `gnome-terminal`, pero se puede usar cualquier emulador de terminal X. Para actualizar Regolith y que use la terminal de tu preferencia que ya tienes instalada, usa `update-alternatives` para especificarla como default.

1. Corre `update-alternatives --config x-terminal-emulator` para ver todas las terminales instaladas disponibles en tu sistema.
2. Selecciona la terminal que prefieras.
