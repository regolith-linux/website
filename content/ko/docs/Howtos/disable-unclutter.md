---
title: "Disable Mouse Hiding (unclutter)"
description: >
  Disable unclutter-xfixes
---

By default the mouse cursor disappears if unused for a few seconds. If you prefer that the mouse cursor always remains visible on the screen, follow these steps:

1. Specify an empty value for the unclutter launcher program with an Xresources override:
  ```console
  $ echo "i3-wm.program.unclutter: :" >> ~/.config/regolith/Xresources
  ```
2. Log out and back in for changes to take effect.

