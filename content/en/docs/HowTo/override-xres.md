---
title: "Override Xresources"
weight: 1
description: >
  Learn how to stage user copies of Regolith configuration files.
---

Regolith relies on the Xresource system to provide a consolidated interface configuration.  By changing Xresource values, Regolith can be customized in ways such as updating the user interface, specifying custom behaviors, or defining a specific format for the clock.

## Initialization

When a Regolith session is started, Xresources are loaded in the following order:

| File | Optional | Notes |
| ---- | -------- | ----- |
| `~/.Xresources` | Y | Intended for non-Regolith settings |
| `~/.Xresources-regolith` | Y | A global override to replace all Regolith settings |
| `/etc/regolith/styles/root` | N | The default Regolith Xresource file if `~/.Xresources-regolith` does not exist |
| `~/.config/regolith/Xresources` | Y | Applies specific overrides to Xresource defaults |

It is recommended to use `~/.config/regolith/Xresources` for customization as it requires the specification of no redundant settings, and is easier to maintain over time.

## Determining what values can be changed

The `xrdb` tool can be used to list the existing Xresource values.  See [here for a table of existing values](../../reference/xresources) in the R1.3.1 release.  Example:

```bash
$ xrdb -query 
...
St.font:	JetBrains Mono:pixelsize=16:antialias=true:autohint=true
...
gnome.icon.theme:	Moka
gnome.terminal.font:	JetBrains Mono 12
gnome.terminal.scrollbar:	never
gnome.wallpaper:	/usr/share/backgrounds/ESP_016895_1525_desktop.jpg
gnome.wm.theme:	Ayu-Mirage-Dark
...
```


## Example - Update the UI for High DPI Screens

By using the `~/.config/regolith/Xresources` override file, we will only need to specify the values we wish to change.  The `xrdb` tool can be used to determine what current values are set to.

1. Create or add the following value to your `~/.config/regolith/Xresources` file:
```bash
Xft.dpi: 192
```
2. Reload the Xresource configuration:
```bash
$ regolith-look refresh
```
3. Open a new terminal to see the change take effect.

<sub>192 is just an example value, please adjust as needed.</sub>

## Example - Change i3 bar position

```bash
$ xrdb -query | grep position
i3-wm.bar.position:	bottom
$ echo "i3-wm.bar.position:	bottom" >> ~/.config/regolith/Xresources
$ regolith-look refresh
```

## Example - Change GTK Theme

```bash
$ xrdb -query | grep gtk
gnome.gtk.theme:	Ayu-Mirage-Dark
$ echo "gnome.gtk.theme:	Adwaita" >> ~/.config/regolith/Xresources
$ regolith-look refresh
```

## Example - Enable System Tray

```bash
$ echo "i3-wm.bar.trayoutput:	primary" >> ~/.config/regolith/Xresources
$ regolith-look refresh
```

{{% pageinfo %}}
Regolith generates many of these values from a canonical set of definitions.  See [this readme](https://github.com/regolith-linux/regolith-styles) for more details.  If you find yourself updating many values, it may be more concise to create your own look instead.
{{% /pageinfo %}}

# Further Reading

See the [reference page for configrations](../../reference/configurations) for more details about config files in Regolith.