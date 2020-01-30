---
title: "Look"
linkTitle: "Look"
weight: 1
description: >
  Regolith Looks
---

Looks provided by Regolith have the package prefix <code>regolith-look-</code>.  For example, another look sporting the Solarized color palette and a different GTK theme and icon set is called <code>regolith-look-solarized-dark</code>.  


## Finding Looks
All <code>look</code> packages using this naming scheme can be found via the following command:
```bash
$ apt list | grep regolith-look
```

## Installing a Look
Looks can be installed via the `apt` tool or with any tool that can install Debian packages on the system, such as `synaptic`.  For example, this command will install the `Ubuntu` look:
```bash
$ sudo apt install regolith-look-ubuntu
```

If you pay attention to the output of `apt` you may notice that in addition to installing the look, `fonts-font-awesome` will also be installed. As a feature, looks are able to depend on any resources or artifacts they require as packages.  This ensures that once a `look` is installed, the user does not need to care about what other things that `look` make require to function properly.  It's taken care of by the package manager.

## Switching to a Look

Once a `look` has been installed, a utility command called `regolith-look` can be used to enable it.  To enable the `ubuntu` `look` installed in the previous step, try the following:
```bash
$ regolith-look set ubuntu
$ regolith-look refresh
```

The command will mention that it created a file in your user directory.  This file is an Xresource file, and it's stored in a specific path such that `i3-gnome-flashback` will look for it upon session start.  Let's have a look at the file:
```bash
$ cat ~/.Xresources-regolith
#include "/etc/regolith/styles/ubuntu/root"
```

In essence, our Xresource file is simply pointing to another Xresource file.  Lets look there:
```bash
$ cat /etc/regolith/styles/ubuntu/root
! -- Styles - Colors
#include "/etc/regolith/styles/ubuntu/color"

! -- Styles - Fonts
#include "/etc/regolith/styles/ubuntu/typeface"

! -- Styles - Theme
#include "/etc/regolith/styles/ubuntu/theme"

! -- Applications
! These files map values defined above into specific app settings.
#include "/etc/regolith/styles/st-term"
#include "/etc/regolith/styles/i3-wm"
#include "/etc/regolith/styles/i3xrocks"
#include "/etc/regolith/styles/rofi"
#include "/etc/regolith/styles/gnome"
```

Here we can see that there are separate Xresource files that define color, typeface and theme (icon, GTK), and these are loaded and then applied to the UI components integrated by Regolith: st (terminal), i3-wm, i3xrocks, rofi, and GNOME.

## Refreshing a Look

There may be times that the UI of the system and the Regolith look get out of sync.  For example, if a program sets the wallpaper or icon theme externally, this will not be reflected in the Xresource settings.  Regolith will only update itself upon login if it detects of Xresource changes have been made.  If you wish to force Regolith to reload the UI based on the Xresource settings, run:
```bash
$ regolith-look refresh
```

## Learning More

To dig deeper, read about `Styles` in the following page and have a look at the [`regolith-styles` README](https://github.com/regolith-linux/regolith-styles).