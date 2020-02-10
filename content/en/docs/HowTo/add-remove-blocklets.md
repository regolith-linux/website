---
title: "Change bar status indicators"
weight: 5
description: >
  Make changes to the status indicators in the bar.
---

## Introduction

The open source component Regolith uses to manage the status components (known as 'blocklets') on the bar (except for the workspace indicator), is a minor fork of [i3blocks](https://github.com/vivien/i3blocks) called [i3xrocks](https://github.com/regolith-linux/i3xrocks).  `i3xrocks` is backward compatible and only adds the ability to read from Xresources. To make changes to which components are visibile on the bar and how often they refresh, the i3xrocks config file needs to be updated.  The default file is `/etc/regolith/i3xrocks/config`, however it is not recommended to make edits to files in the `/etc` directory as any changes you make may be overwritten by future system updates.  Rather, it's recommended to copy the file to your user directory and then change the containing configuration to point to your user copy.  In order to do this in Regolith, the containing config file is i3's config.  You'll notice the following line in `/etc/regolith/i3/config`:
```
set $i3xrocks_config /etc/regolith/i3xrocks/config
```

### Steps

1. Copy the i3xrocks config file into your user directory, say `~/.config/regolith/i3xrocks.config`.
2. Stage your own i3 config file [(tutorial)](../stage-configs), then open `~/.config/regolith/i3/config` in your editor of choice.
3. Edit the line that sets the `i3xrocks_config` variable to point to your new config file:
```
set $i3xrocks_config /home/<username>/.config/regolith/i3xrocks.config
```
4. Now let's edit `~/.config/regolith/i3xrocks.config`.  You'll notice sections are commented out, such as a `memory` section.  Enable the memory blocklet:
```
# Memory
#
[memory]
interval=10
```
5. After saving the file, you will need to log out and back in, or if you've already staged your i3 config file in a previous desktop session, you can simply reload the i3 config for the change to take effect.
6. After the reset, you should notice a new blocklet in the bar displaying free memory of your system.  Learn more [about the blockets here](https://github.com/vivien/i3blocks#blocks).

## Add Blocks

The blocklets that ship with Regolith reside at `/usr/share/i3xrocks`.  They are just plain scripts that can be run on the command line.  They output text in pango format, which is interpreted by i3bar for rendering.  Any blocklet script made for i3blocks should also work with i3xrocks, but keep in mind that Regolith has specific layout and textual formatting that general blocks will not have by default.

Refer to the `i3blocks` documentation to add more blocklets to your bar.
