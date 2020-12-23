---
title: "Support Multiple Batteries"
weight: 3
description: >
  Display status of the batteries per instance.
---

Out of the box the primary battery status will be displayed in the i3-bar. For some laptops that has multiple batteries e.g. _ThinkPad_, you want to have both batteries displayed. To do so, follow the steps:

1. Stage your own i3 config file [(tutorial)](../stage-configs), then open `~/.config/regolith/i3xrocks/conf.d/80_battery` in your editor of choice.
2. Find the line that pertains to the battery blocklet:
```conf
...
# Battery indicator
#
# Displays total percentage charge left of specified battery.
[battery]
interval=30
# instance=BAT0
```
3. List all the battery instances running on your machine by running:
```sh
ls /sys/class/power_supply/

# AC BAT0 BAT1
```
4. Update the staged config file to have a new blocklet as such:
```conf
...
# Battery indicator
#
# Displays total percentage charge left of specified battery.
[battery]
interval=30
instance=BAT0

[battery]
interval=30
instance=BAT1
```

## Further Reading

See the [reference page for configurations](../../reference/configurations) for more details about config files in Regolith.
