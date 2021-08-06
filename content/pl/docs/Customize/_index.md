---
title: "Customize"
linkTitle: "Customize"
weight: 4
description: "Customize Regolith to suit your needs"
---

Regolith, as a set of independent open-source components, lacks a uniform configuration file, format, or set of conventions. However efforts have been made to create as much consistency as possible by utilizing a simple session-wide key-value configuration facility known as [Xresources](https://wiki.debian.org/Xresources). Interface preferences such as colors and typeface are defined in `Xresources` files and then read by components such as `rofi` and `i3-wm`. For the most part, `Xresources` can be used for most configuration. Lower level changes, for example swap out `i3bar` for `polybar` or `drun` for `rofi` require the removal, installation, and configuration of other packages.

{{% pageinfo %}}
In addition to the content in this section, refer to the [tutorials]({{< ref "howtos" >}}) for step-by-step examples of how to customize Regolith.
{{% /pageinfo %}}

## Wygląd

The highest level change in the way Regolith looks is called a "look". This ties together color, typeface, GTK theme and icons into a packageable unit known as a `look`. A few looks ship in the Regolith PPA, the default for R1.4 being called `lascaille`. Regolith Looks can be installed from the package manager. The official Looks follow the naming convention of `regolith-look-<look-name>`. Installed Regolith looks can easily be set via the Look dialog through {{< keys "super,alt,l" >}}.

## Keybindings and Window Behavior

Regolith uses the i3 window manager to display and interface with application windows. Regolith uses the standard version of i3-gaps. Any configuration available to i3-gaps should also work with Regolith, however keep in mind Regolith adds additional configuration via `Xresources` that may need to be adapted for some customizations. To learn what configuration options are available in i3, consult [the i3 user guide](https://i3wm.org/docs/userguide.html).

### Styles

Regolith `looks` are a collection of style definitions that are bundled together as a cohesive whole. But, what if you want to mix and match from different looks or make small tweaks to an existing look? Well, the `Xresources` files that define the looks can be modified directly. For example, to continue to use the "Cahuella" look but change the default font from "Source Code Pro" to, say "Ubuntu Mono", one would just need to modify the typeface `Xresources` file to specify the new font (assuming it's already installed on the system).

## Compositors

A compositor is a desktop component that provides visual effects to windows. While not necessary for a desktop to function, they provide some hints to the user regarding the focused application, transitions, and other effects. The performance and behavior of compositors can vary depending on graphics hardware and driver configurations. Due to this, special attention was made such that they can be easily swapped based on the users needs. Regolith compositor packages start with `regolith-compositor`.

## Components

A deeper level of customization is to change which components are loaded and used. This is an advanced topic and requires both some courage to deal with the unexpected as well as general technical knowledge and some patience.

## Packages

Regolith is ultimately a set of Debian packages that exist as collections of files on the user's computer. Packages can be created and hosted by anyone willing and able to create a launchpad account and some skills with packaging. This section covers the details of Regolith's package structure and tips on creating your own.
