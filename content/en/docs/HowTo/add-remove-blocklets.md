---
title: "Change Bar Status indicators"
weight: 5
description: >
  Make changes to the status indicators in the bar.
---

# Adding or Removing status indicators

## Finding Status Indicators

```bash
$ apt search i3xrocks-
```

## Installing a Status Indicator

```bash
$ sudo apt install i3xrocks-memory
$ regolith-look refresh
```

# Customization of bar

For customization of the bar, for example to change the polling interval of the weather block, or to change the order of elements on the bar, the configuration can be copied from `/etc/regolith/i3xrocks/conf.d` to `~/.config/regolith/i3xrocks/conf.d` and then modified in the user directory.  For example, to change the order of the battery and net traffic blocks on the bar and not display notifications, perform the following steps:

```bash
$ ls /etc/regolith/i3xrocks/conf.d
01_setup  
30_net-traffic  
80_battery
80_rofication     
90_time
$ mkdir -p ~/.config/regolith/i3xrocks/conf.d
$ cd /etc/regolith/i3xrocks/conf.d
$ cp 01_setup ~/.config/regolith/i3xrocks/conf.d/01_setup
$ cp 80_battery ~/.config/regolith/i3xrocks/conf.d/30_battery
$ cp 30_net-traffic ~/.config/regolith/i3xrocks/conf.d/80_net-traffic
$ regolith-look refresh
```

If any block configuration exists in the user directory `~/.config/regolith/i3xrocks/conf.d`, then the defaults in `/etc/regolith/i3xrocks/conf.d` will be ignored.

# Further Reading

See the [reference page for configrations](../../reference/configurations) for more details about config files in Regolith.