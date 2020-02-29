---
title: "Change the terminal font size"
weight: 14
description: >
  Change the font used in the terminal.
---

1. Create or add the following value to your `~/.config/regolith/Xresources` file:
```bash
St.font: Source Code Pro:pixelsize=24:antialias=true:autohint=true
```
2. Reload the Xresource configuration:
```bash
$ regolith-look refresh
```
3. Open a new terminal to see the change take effect.