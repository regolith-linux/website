---
title: "Wallpaper Configuration"
weight: 18
description: >
  Change wallpaper via GNOME or Xresources
---

This page describes how to configure the wallpaper in Regolith, which can either be set via the GNOME Settings, or in dotfiles via Xresource overrides.

## GNOME settings

As is mentioned in the Getting Started section, wallpaper can be set using GNOME Settings.  Some Looks specific specific wallpaper that is set to go along with the color theme and other style changes.  An Xresource value can be set to tell Regolith to ignore Look settings and keep which ever wallpaper has been selected via GNOME Settings.  The following command will set the `gnome.wallpaper` Xresource key to an empty value, which will prevent Regolith from making any changes:

```bash
$ echo "gnome.wallpaper: " > ~/.config/regolith/Xresources
```

## Xresources

Another way of setting the wallpaper is by specifying a file path to the image in the Xresource key `gnome.wallpaper`.  Upon session load, wallpaper will be set if a image file is specified at this key.  For example, here is how to specify an override to set the wallpaper to the default Ubuntu wallpaper:

```
$ echo "gnome.wallpaper: /usr/share/backgrounds/warty-final-ubuntu.png" > ~/.config/regolith/Xresources
```
