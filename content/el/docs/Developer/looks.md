---
title: "Looks"
linkTitle: "Looks"
weight: 1
description: >
  Make Looks that are easy to share with others
---

Looks are a combination of `Xresources` definitions and associated resources such as wallpapers, GTK themes, and icons that as a whole provide the user with a distinctive user interface, all expressed as a collection of files. The default looks that ship with Regolith are natural starting points for creating new ones, but it's also possible to start from scratch as long as the required `Xresources` entries are defined. Ideally, looks are packaged as Debian packages with all required resources either provided by the look or added as a package dependency. By using the OS packaging system, required files and resources are ensured to be installed and available.

## Required Files

Starting from scratch, the only mandatory file for a Look as a single `Xresources` definition file. This file must specify entries for Regolith's required values, [defined on this page]({{< ref "/docs/Reference/xresources" >}}). However, it's recommended to simply copy an existing look as a basis for customization, due to the compositional nature that Looks use.

### Suggested File Layout

It is suggested that a look be installed in `/etc/regolith/styles/<look name>` and that the primary (or only) `Xresources` file is named `root`. Existing Regolith Looks decompose the `Xresources` into types of resources and any config specific to a UI component. For example the "Cahuella" Look provides definitions for GNOME (theme), color, and typeface and a specific theme for "Rofi" since it's configuration cannot be completely expressed via `Xresources` key/value pairs:

```console
$ find /etc/regolith/styles/cahuella -type f
/etc/regolith/styles/cahuella/theme
/etc/regolith/styles/cahuella/color
/etc/regolith/styles/cahuella/typeface
/etc/regolith/styles/cahuella/root
/etc/regolith/styles/cahuella/rofi.rasi
```

## Initialization

When the Regolith session loads upon login, the initialization script looks [in a few places]({{< ref "/docs/customize/styles#loading-order" >}}) for `Xresources` file definitions. The `regolith-look` tool provides the ability for users to change looks by creating an `Xresources` file that simply redirects to another file via the `#include` directive provided by the `Xresources` subsystem. In this way, a Look is enabled in Regolith by providing this link between a well-known `Xresources` file entry point to the files specific to the custom Look.

## Packaging

The ideal user experience is to install a look via a package manager tool and then using the `regolith-look` tool to set it. For example:

```console
$ sudo apt install regolith-look-ubuntu
$ regolith-look set ubuntu
$ regolith-look refresh
```

In order to achieve this flow, all runtime dependencies (fonts, GTK themes, wallpapers, etc.) must be included in the package or defined as a Debian package dependency in a `debian/control` file. See the [`regolith-styles` package](https://github.com/regolith-linux/regolith-styles/tree/master/debian) for further information on Debian metadata. If you're new to Debian packaging, here is [an introduction](https://wiki.debian.org/BuildingTutorial).

## Testing

Once you have a Look ready for testing, copy the containing directory for your files into `/etc/regolith/styles`, for example for a Look called `orange`, you may have this file layout:

```console
/etc/regolith/styles/orange/theme
/etc/regolith/styles/orange/color
/etc/regolith/styles/orange/typeface
/etc/regolith/styles/orange/root
/etc/regolith/styles/orange/rofi.rasi
```

Then run `regolith-look set orange && regolith-look refresh`. The UI should be updated with your new look.
