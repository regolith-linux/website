---
title: "Override Xresources"
weight: 1
description: >
  Learn how to stage user copies of Regolith configuration files.
---

Regolith relies on the [Xresource system](https://en.wikipedia.org/wiki/X_resources) to provide a consolidated interface configuration.  By changing Xresource values, Regolith can be customized in ways such as updating the user interface, specifying custom behaviors, or defining a specific format for the clock.  

{{% pageinfo %}}
In Regolith, Xresource values can be changed via two methods: supplying your own Xresource files, and overriding the existing Xresource values.  The latter approach is strongly recommended, as it makes upgrading to newer versions of Regolith less likely to break.  If you copy the Xresource tree completely, you'll need to integrate any breaking changes in future versions manually.
{{% /pageinfo %}}


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

The `xrdb` tool can be used to list the existing Xresource values.  See [here for a table of existing values](../../reference/xresources) in the R1.4.1 release.  Example:

```bash
$ xrdb -query 
...
gnome.icon.theme:	Moka
gnome.terminal.font:	JetBrains Mono 12
gnome.terminal.scrollbar:	never
gnome.wallpaper:	/usr/share/backgrounds/ESP_016895_1525_desktop.jpg
gnome.wm.theme:	Ayu-Mirage-Dark
...
```

## Examples
Note that the commands presented below append text to a file.  So, running the command more than once will result in duplicate lines in the file.

### Example - Update the UI for High DPI Screens

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

### Example - Change i3 bar position

```bash
$ xrdb -query | grep position
i3-wm.bar.position:	bottom
$ echo "i3-wm.bar.position:	top" >> ~/.config/regolith/Xresources
$ regolith-look refresh
```

### Example - Change GTK Theme

```bash
$ xrdb -query | grep gtk
gnome.gtk.theme:	Ayu-Mirage-Dark
$ echo "gnome.gtk.theme:	Adwaita" >> ~/.config/regolith/Xresources
$ regolith-look refresh
```

### Example - Enable System Tray

```bash
$ echo "i3-wm.bar.trayoutput:	primary" >> ~/.config/regolith/Xresources
$ regolith-look refresh
```

### Example - Use Alt instead of Win as Super

```bash
$ echo "i3-wm-mod: Mod1" >> ~/.config/regolith/Xresources
$ echo "i3-wm-alt: Mod4" >> ~/.config/regolith/Xresources
```

Then Reload i3 for the change to take effect.  (Note: On Regolith 1.5 there is an active regression here with a [temporary fix in the issue](https://github.com/regolith-linux/regolith-desktop/issues/504).)

### Example - Launch `nm-applet` when i3 starts

Some users prefer to use the `nm-applet` program to configure and manage their wireless network.  (NOTE: From Regolith 1.5 `nm-applet` is run by default in the background.)  i3 config file can be updated to launch any arbitrary program at start time.  But, rather than copying the whole file, we can supply up to 3 programs via Xresources without having to change the i3 config file.  For this to work, also make sure that the system tray is enabled (see above).

```bash
$ echo "i3-wm.program.1: /usr/bin/nm-applet" >> ~/.config/regolith/Xresources
```

This change requires you to log back in before the change takes effect.

{{% pageinfo %}}
Regolith generates many of these values from a canonical set of definitions.  See [this readme](https://github.com/regolith-linux/regolith-styles) for more details.  If you find yourself updating many values, it may be more concise to create your own look instead.
{{% /pageinfo %}}

# Further Reading

See the [reference page for configurations](../../reference/configurations) for more details about config files in Regolith.
