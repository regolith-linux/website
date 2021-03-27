---
title: "Packages"
linkTitle: "Packages"
weight: 2
description: >
  A summary of packages hosted by the Regolith project and a description for each.
---

| **Package**                     | **Description**                                                                                                                                |
| ------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------- |
| i3-snapshot                     | Save and restore window layouts.                                                                                                               |
| i3xrocks                        | A fork of i3blocks that enables Xresources integration.                                                                                        |
| regolith-assets                 | An optional package with additional wallpaper.                                                                                                 |
| regolith-builder                | Scripts and metadata for building and hosting Regolith.                                                                                        |
| regolith-compositor-compton-glx | A compositor configuration for Picom (recently renamed from Compton).                                                                          |
| regolith-compositor-xcompmgr    | A compositor configuration for xcompmgr.                                                                                                       |
| regolith-compositor-none        | A compositor configuration for no compositor.                                                                                                  |
| regolith-desktop                | The legacy (pre 1.5) root meta package for Regolith by which all other default packages are referenced.                                        |
| regolith-desktop-meta           | The virtual package from which one of the following desktop packages can be installed into:                                                    |
| regolith-desktop-standard       | The baseline desktop package that installs a reasonable subset of all Regolith functionality.                                                  |
| regolith-desktop-complete       | This installs all possible packages and adds roughly 180Mb to the installation footprint.                                                      |
| regolith-desktop-minimal        | This package is for system tweakers. Some functionality may be broken with this package, but it allows users to remove more from their system. |
| regolith-desktop-mobile         | A slight tweak to the standard package, this adds support for features common on laptops such as batteries.                                    |
| regolith-gdm3-theme             | An optional package for an updated login screen.                                                                                               |
| regolith-gnome-flashback        | A customization of `i3-gnome-flashback` for Regolith. Session init logic lives here.                                                           |
| regolith-i3-gaps-config         | Regolith's version of the i3 config file.                                                                                                      |
| regolith-i3xrocks-config        | Configuration for the status indicators in the bar.                                                                                            |
| regolith-linux.github.io        | This website.                                                                                                                                  |
| regolith-rofication             | A customization of the Rofication project.                                                                                                     |
| regolith-st                     | The st-term with some patches applied.                                                                                                         |
| regolith-styles                 | Metadata that describes the UI look in Regolith including several binary packages for specific looks.                                          |
| remontoire                      | A GTK+ keybinding viewer that integrates with i3.                                                                                              |
| xrescat                         | `cat` for `Xresources`.                                                                                                                        |

## Diving Deeper

For those looking for more specifics, a machine-readable form of all packages and branch versions associated with a release are defined in [this repo](https://github.com/regolith-linux/regolith-builder). For example, R1.3's packages are defined [here](https://github.com/regolith-linux/regolith-builder/blob/master/package-model-R1.3.json).
