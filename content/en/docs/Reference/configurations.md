---
title: "Config Files"
linkTitle: "Config Files"
weight: 2
description: >
  General information about the config files that Regolith uses.
---

| **Component** | **Default Config** | **User Config** | **Notes** |
|------------|--------|--------|--------|-------------|
| i3-gaps | `/etc/regolith/i3/config` | `~/.config/regolith/i3/config` | In Regolith versions prior to 1.2 this file was in another directory.  |
| Xresources | `/etc/regolith/styles/root` | `~/.Xresources-regolith` (Global override)<br/>`~/.config/regolith/Xresources` (Override)<br/>`~/.config/regolith/Xresources.d` (User files) | `~/.Xresources` is also loaded but intended for properties that may also be required in other desktop sessions. |
| Rofi | `/etc/regolith/styles/cahuella/rofi.rasi` | Defined in the `theme` style file. | This can also be overridden directly in the i3 file if preferred.
| Bar Workspace Labels | `/etc/regolith/styles/i3-wm` | User defined | |
| Bar status indicators | `/etc/regolith/i3xrocks/conf.d` | `~/.config/regolith/i3xrocks/conf.d` | Each block has it's own file.  Filename determines ordering. |
| Picom (Compton) Compositor | `/etc/regolith/compton/config` | `~/.config/regolith/compton/config` | User config added in 1.4

## Load Sequence

Upon session start, Regolith loads configuration files in the following order:

1. `/usr/bin/i3-gnome-flashback` executes after successful login
2. Load Xresource file `~/.Xresources` if it exists.
3. Load Xresource file `~/.Xresources-regolith` if it exists.
4. Merge any values from file `~/.config/regolith/Xresources` if it exists.
5. If first time session has loaded, initialize system.
6. Compare current Xresource db against last saved hash, if different, reload GNOME settings from Xresources.
7. Execute i3 with first config file found from following list: `~/.config/regolith/i3/config`, `/etc/regolith/i3/config`, `/etc/i3/config`.
8. i3 executes the UI components [Rofi](https://github.com/davatorium/rofi), [i3xrocks](https://github.com/regolith-linux/i3xrocks), [unclutter](https://github.com/Airblader/unclutter-xfixes), regolith-compositor, [Rofication](), and [regolith-ftue](https://github.com/regolith-linux/regolith-ftue).
