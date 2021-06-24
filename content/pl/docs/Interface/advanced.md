---
title: "Advanced"
linkTitle: "Advanced"
weight: 4
description: >
  Advanced topics for the Regolith interface
---

## i3bar

The bar's visibility can be toggled with {{< keys "super,i" >}}. This can be useful when wanting to remove all distractions and devote 100% of the screen to one or more applications in your workspace. Another way of giving one application complete use of the screen is to press {{< keys "super,f" >}} to cause the active application to enter full screen mode.

## i3-wm Tryb Wyglądu

i3-wm offers a few different layout modes. {{< keys "super,t" >}} can be used to toggle between tabbed, horizontal and vertical split modes.

## Zapisz i przywróć położenie okna

[`i3-snapshot`](https://github.com/regolith-linux/i3-snapshot) is integrated into Regolith for saving and restoring window layouts in the same session. Pressing {{< keys "super|," "|" >}} will write the current window layout to a file in the `/tmp` directory. {{< keys "super,." >}} will restore that layout. `i3-snapshot` is intended for use cases in which monitor changes may cause layouts to be randomized. It is not a replacement for [`i3-save-tree`](https://i3wm.org/docs/layout-saving.html) as it uses window identifiers that do not survive across X sessions, nor does it offer a way of positioning application launches into specific layouts.
