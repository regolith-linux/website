---
title: "Change the lock screen program"
weight: 8
description: >
  Configure Regolith to use a lockscreen other than `gnome-flashback`.
---

### 1. Configure `gnome-flashback` to Disable Built-in Lockscreen

By default `gnome-flashback` handles the lockscreen for Regolith.  This can be adjusted by modifying it's configuration via the gsettings command line program:

```bash
$ gsettings set org.gnome.gnome-flashback screensaver false
```

### 2. Cause Your Lockscreen program to Run from i3 Keybinding

Specify the following override line in your `~/.config/regolith/Xresources` file (substituting `your-script.sh` to the command you wish to use for the screenlock):

```
i3-wm.program.lock: your-script.sh
```

For example, assuming you have `i3lock` installed:

```bash
$ echo "i3-wm.program.lock: /usr/bin/i3lock" >> ~/.config/regolith/Xresources
```
