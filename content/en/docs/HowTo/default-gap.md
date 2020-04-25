---
title: "Change the Default Window Gap"
weight: 16
description: >
  Change the pixels between windows.
---

Like most configuration in Regolith, the i3-gaps gap size can be tuned via Xresources ([See here](../../Reference/xresources) for all Xresource definitions).

1. Create or add the following value to your `~/.config/regolith/Xresources` file:
```
i3-wm.gaps.inner.size: 20
```
<sub>In this example we're setting the default gap to 20 pixels.</sub>

2. Reload the Xresource configuration:
```bash
$ regolith-look refresh
```

# Further Reading

See the [reference page for configrations](../../reference/configurations) for more details about config files in Regolith.