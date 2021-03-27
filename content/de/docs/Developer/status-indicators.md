---
title: "Status Indicators"
linkTitle: "Status Indicators"
weight: 2
description: >
  Add new status indicators to the bar
---

The `i3bar` is the UI component that is displayed by default at the bottom of the screen. To the left is workspace information. This is built-in to `i3bar` as it's designed to be directly integrated with `i3-wm`. On the right are various status indicators, which may vary based on which packages are installed. It's common to have the time (`i3xrocks-time`), notifications (`regolith-rofication`), and network I/O (`i3xrocks-net-traffic`). This page describes how to add new status indicators.

## Execution

In Regolith, status indicators are simply small scripts that run once or on an interval that return text when they complete. This text is interpreted by `i3bar` and displayed. The program that executes the scripts is called `i3xrocks`. It is a fork of another program, `i3blocks` that adds two features that were necessary to support the Regolith desktop environment:

1. Reading values from `Xresources`.
2. Expressing configuration as a set of files, rather than one single file.

`i3xrocks` is invoked by `i3-wm` from within the i3 config file. Once started, `i3xrocks` reads it's configuration from the files it finds in `/etc/regolith/i3xrocks/conf.d` (or a user directory, see [this reference page](../../reference/configurations/) for details.) The configuration files in `/etc/regolith/i3xrocks/conf.d` describe, per status indicator, the path to the script to execute, the interval by which to run the script, and other variables that the script may need for it's configuration. Where possible, `Xresources` should be used to read configuration from, making updates and customizations more consistent.

## Scripts

The scripts that run are typically stored at `/usr/share/i3xrocks/` and are generally executable from the command line. For example:

```console
$ /usr/share/i3xrocks/time
<span color="#E6E1CF"></span><span font_desc="JetBrains Mono Medium 13" color="#E6E1CF"> 05/30 19:06 </span>
```

You'll notice here some HTML-like formatting, and then the actual date and time. The structure of the data returned by the script can be any text, but to maintain a consistent look in Regolith we use the following convention:

```
<icon> <text>
```

The icon is represented by a font icon, or, a font that typically contains symbols rather than text. By default Regolith uses the `fonts-materialdesignicons-webfont` and other looks use `fonts-font-awesome`. The particular font and character used by the icon is defined by `regolith-look` `Xresources` definitions. For example, by default the icon for time is [defined here](https://github.com/regolith-linux/regolith-styles/blob/master/lascaille/typeface#L22). When providing your own icon, you can just use one from the installed font for your preferred look, or create a PR in the `regolith-styles` repo to include your new icon (with a `Xresources` name) for other users.

## Output

Before we saw the output of the time script. Let's deconstruct it:

```html
<span color="#E6E1CF"></span
><span font_desc="JetBrains Mono Medium 13" color="#E6E1CF"> 05/30 19:06 </span>
```

The first span block defines the icon of the status indicator. Notice how it does not specify a font. This is because, without a font specification, the default is used. In the case of Regolith looks, the default font is whatever icon font is specified in `Xresources`. In Regolith 1.4.1 and 1.5, [the default look is `lascaille`](https://github.com/regolith-linux/regolith-styles/blob/master/Xresources/root) and [the icon font is `fonts-materialdesignicons-webfont`](https://github.com/regolith-linux/regolith-styles/blob/master/lascaille/typeface#L2).

The color is [read from `Xresources` in the script](https://github.com/regolith-linux/regolith-i3xrocks-config/blob/master/scripts/time#L38), rather than hardcoded. This allows the look of the status indicator to match the installed user's look.

The second `<span>` block contains the textual status information. Again we have a color (coming from `Xresources`), but also now a font. This is the secondary font passed to `i3bar` in the `i3-wm` config file. It also comes from Xresources. In general, to load icon character, the icon font and text font, as well as the colors, use the `xrescat` program with the appropriate keys. For the time script it is this:

```bash
LABEL_ICON=${icon:-$(xrescat i3xrocks.label.time )}
LABEL_COLOR=${label_color:-$(xrescat i3xrocks.label.color "#7B8394")}
VALUE_COLOR=${color:-$(xrescat i3xrocks.value.color "#D8DEE9")}
VALUE_FONT=${font:-$(xrescat i3xrocks.value.font "Source Code Pro Medium 13")}
```

**Note**: the 3rd parameter to `i3xrocks` is a default value in the case that the key is undefined at runtime.

## Buttons

Status indicators can optionally perform actions when users click on them on the bar. To do this, test if the `BUTTON` variable has been set, and of so act accordingly. In the case of `time`, clicking the status causes the date/time preference dialog from "GNOME Control Center" to be loaded:

```bash
if [ "x${BUTTON}" == "x1" ]; then
    /usr/bin/i3-msg -q exec "/usr/bin/gnome-control-center --class=floating_window datetime"
fi
```

## `conf.d` Scripts

Once the script that generates the status text is ready, another configuration file is needed to tell `i3xrocks` to execute the script. This file should start with a number between 10 - 100 signifying where by default it should be positioned on the bar (bigger numbers are farther to the right.), and then the name of the script. Looking again at the time config block (in `/etc/regolith/i3xrocks/conf.d/90_time`):

```toml
# Date Time
[time]
interval=10

```

{{< badge >}}IMPORTANT{{< /badge >}} each script **must** end with a linefeed!

By default, `i3xrocks` is configured to look in the `/usr/share/i3xrocks` directory for scripts. So `[time]` tells i3rocks to execute a script `/usr/share/i3xrocks/time`. The interval is used to know when to call the script, on a timer. See the `i3blocks` documentation for more fields and details about this configuration format.

## Examples

### File Count

To create a script that counts the number of text files in the `/tmp` directory, the command we could use is `ls /tmp | wc -l`. This returns a number of files and directories. We can make a script (`/usr/share/i3xrocks/tmp-count`) with the correct formatting like so:

```bash
#!/bin/bash

set -Eeu -o pipefail

LABEL_ICON=${icon:-$(xrescat i3xrocks.label.tmpfilecount T)}
LABEL_COLOR=${label_color:-$(xrescat i3xrocks.label.color "#7B8394")}
VALUE_COLOR=${color:-$(xrescat i3xrocks.value.color "#D8DEE9")}
VALUE_FONT=${font:-$(xrescat i3xrocks.value.font "Source Code Pro Medium 13")}

COUNT=$(ls /tmp | wc -l)

echo "<span color=\"${LABEL_COLOR}\">$LABEL_ICON</span><span font_desc=\"${VALUE_FONT}\" color=\"${VALUE_COLOR}\">$COUNT</span>"
```

Notice how `LABEL_ICON` has a new key name ending with `tmpfilecount` and a default value of `T`. Until/unless `regolith-styles` is updated as mentioned above to include this new key, general users will not have `i3xrocks.label.tmpfilecount` defined in their system, so the fallback of `T` will be used.

Next we need a configuration script (`/etc/regolith/i3xrocks/conf.d/50_tmp-count`) that integrates our status script into the desktop:

```toml
# File Count in /tmp
[tmp-count]
interval=60
```

This config file will render roughly in the middle of the right side of the bar and will be updated every minute.

## Further Reading

As `i3xrocks` is based on `i3blocks`, with a few minor additions, it is safe to use the [excellent and extensive documentation](https://github.com/vivien/i3blocks) available for the project. Just keep in mind the modular configuration files and that you can reference `Xresources` keys directly from the configuration files.
