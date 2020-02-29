---
title: "Change the bar date/time format"
weight: 4
description: >
  Change the date/time format used in the bar.
---

In this example we'll override the clock to show only hour and minute.

1. Create or add the following value to your `~/.config/regolith/Xresources` file:
```bash
i3xrocks.date.format2: + %H:%M
```
2. Reload the Xresource configuration:
```bash
$ regolith-look refresh
```
3. The bar clock should update within a minute with the new format.