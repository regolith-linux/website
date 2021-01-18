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

## Removing a Status Indicator

The apt `purge` command must be used to ensure all files associated with a status indicator are deleted from the system.

```bash
$ sudo apt purge i3xrocks-memory
$ regolith-look refresh
```

# Customization of bar

Each status indicator on the bar is managed by a file.  The filename's sort order maps to the position of the status indicator on the bar.  So for example, a file starting with `10_` will come before a file starting with `20_`.  Within each file contains some information that i3xrocks uses to execute a script that ultimately returns the data you see on the bar.  Some of the status indicators have configuration parameters that can be adjusted to your liking.  For example, if you would prefer that the battery status changes more readily, the polling interval can be updated.  The first thing to do in order to customize the bar is to copy the indicators you wish to see from `/etc/regolith/i3xrocks/conf.d` to `~/.config/regolith/i3xrocks/conf.d`.  Once files have been added into `~/.config/regolith/i3xrocks/conf.d`, i3xrocks will ignore the default files in `/etc/regolith/i3xrocks/conf.d`.  Each file in `~/.config/regolith/i3xrocks/conf.d` can be modified as you see fit.  To change the order of status indicators on the bar, simply change the name of the files to the sort order you prefer.

Once you've made your changes, refreshing the session should cause the bar to update based on your new configuration.

For example, to change the order of the battery and net traffic blocks on the bar and not display notifications, perform the following steps:

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