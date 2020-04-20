---
title: "Configuration"
linkTitle: "Configuration"
weight: 3
description: >
  Make changes to the way Regolith looks and behaves.
---

## Wallpaper

The wallpaper can be changed via `Settings`, or <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">c</span></span> by going to the `Background` tab and selecting the preferred image or color.

<img class="shadow m-5" src="../regolith-screenshot-settings-wallpaper.png" width="640px"/>

## Status Bar Indicators

Status indicators such as CPU load, date and time, notifications, weather, and other system info can be added or removed by installing packages.  For example, to show a status indicator for your laptop battery simply run `sudo apt install i3xrocks-battery` and then refresh the session.  To get an up date list of what's available, run `apt list | grep ^i3xrocks-` or search for "i3xrocks-" in your favorite package manager GUI, such as [Synaptic](https://help.ubuntu.com/community/SynapticHowto).

<img class="shadow m-5" src="../regolith-screenshot-synaptic-search.png" width="480px"/>

For further customization of the bar, for example to change the polling interval of the weather block, or to change the order of elements on the bar, the configuration can be copied from `/etc/regolith/i3xrocks/conf.d` to `~/.config/regolith/i3xrocks/conf.d` and then modified in the user directory.  For example, to change the order of the battery and net traffic blocks on the bar and not display notifications, perform the following steps:

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

## Looks

Colors, wallpaper, window and bar layouts, and other visual factors are bundled together in Regolith and called "looks".  Looks provide a simple way of changing the entire look of the desktop with a few commands.  At this time, looks can only be configured on the command line, but there is a script that manages the details for you.  Like status bar indicators, looks are packaged and are installed and removed like any other software package.  By convention, Look packages use the following naming format `regolith-look-<name>`.  `apt` or a GUI package manager can be used to search for available looks.  The tool `regolith-look` can be used to change looks and refresh the active session with the selected look.  Here's an example that switches to the `cahuella` look that shipped by default in Regolith 1.3:

```bash
$ apt list | grep ^regolith-look-
...
regolith-look-cahuella/bionic,now 2.4.9 amd64
...
$ sudo apt install regolith-look-cahuella
$ regolith-look set cahuella
$ regolith-look refresh
```

## Keybindings

The most common keybinding change is the super key.  Regolith uses Xresources as the canonical source of truth for settings, which are read by various UI components.  The table of Xresource keys open to user configuration can be found here.  To change the default super binding from the windows key to alt, add the following line to the file `~/.config/regolith/Xresources`:

```bash
i3-wm.mod: Mod1
i3-wm.alt: Mod4
```

To change other keybindings, creating a user copy of the i3 config file is necessary.  See the [staging configs HowTo](../../howto/stage-configs) to learn more.

Note: GNOME also has it's own set of keybindings.  When the Regolith session is first initialized, the conflicting GNOME keybindings are removed from the user settings.  GNOME keybindings can be managed in `Settings`.

## Almost Everything Else

`Settings` or gnome-control-panel as it's also known, is the tool to configure locale, date, display, networking, and various other settings.  Launch it via the app launcher with <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">space</span></span>, type 'settings', and hit enter to launch the app.  Or, the direct keybinding is <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">c</span></span>.

## Further Reading

To dig deeper checkout the section on [Customization](../../customize), find what [HotTos](../../howto) are available, or read the [Xresource reference](../../reference/xresources).  Become an i3 power user by reading the [user guide](https://i3wm.org/docs/userguide.html).