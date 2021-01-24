---
title: "System Configuration"
linkTitle: "System Configuration"
weight: 3
description: >
  Learn how to change settings in the Regolith desktop
---

## GNOME Control Center (also known as "Settings").

A key difference between Regolith and other environments described as minimal is the integration of the GNOME settings backend. This provides a well-tested, consistent, and friendly way of configuring your environment and operating system. To load the settings app, launch "Settings" from Rofi or press {{< keys "super,c" >}}.

Settings is a special app in Regolith in that it is launched in floating mode. This is because typically when loading settings a user is looking to make a specific change and then exit back to their work. Once loaded use the tab sections on the left of the window to select which item you wish to configure.

## i3-wm

The i3 window manager is not part of GNOME and so it's configuration is not viewable or changeable from the GNOME Control Center. Rather, the user must edit the config file and reload i3 to make changes. In Regolith, the i3 config file is at `/etc/regolith/i3/config` and users can supply their own copy that will override this default if placed at `~/.config/regolith/i3/config`.

Many things about Regolith can be configured in the i3 config file. It is best to read the [i3 user guide](https://i3wm.org/docs/userguide.html) to understand what and how to modify this file.

{{% pageinfo %}}
Maintaining a user copy of the i3 config file requires more work when upgrading Regolith, as changes have to managed from the defaults into the user config to support new features in subsequent versions. If possible, it is better to rely on [`Xresources` overrides]({{< ref "/docs/howtos/override-xres" >}}) to customize i3.
{{% /pageinfo %}}

## i3bar

The i3bar configuration is defined in the i3 config file listed directly above, but the i3bar has it's own configuration for status items. To change which information is displayed in the bar, the config directory is `/etc/regolith/i3xrocks/conf.d`. There is one file in this directory for every status item, plus `01_setup`. The prefixed number defines the order in which the blocks are displayed on the bar. We maintain a [separate documentation]({{< ref "/docs/howtos/add-remove-blocklets" >}}) on how to customize and switch around the indicators on the bar.

## Look

The look of Regolith is configured via `Xresources`, that live in `/etc/regolith/styles/`. This topic is covered in detail in the [Customize]({{< ref "/docs/customize" >}}) section of the documentation.

## Session

When Regolith is initially loaded, a script is run that configures the system and launches `i3-wm`. While it is not recommended to modify this script, it can provide details about how Regolith is structured and what policy it implements when loading configuration. This file is readable at `/usr/bin/i3-gnome-flashback`. In fact, this script could be considered the initial seed of the Regolith project and was taken from the [i3-gnome-flashback](https://github.com/deuill/i3-gnome-flashback) project.
