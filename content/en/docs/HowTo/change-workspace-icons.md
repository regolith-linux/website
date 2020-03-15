---
title: "Change workspace icons"
weight: 7
description: >
  Learn how to set custom icons for each workspace.
---

Adding icons to workspaces can give your desktop a nice and functional look.

### Finding icons

Icons are actually characters from fonts installed by Regolith looks. Each look comes with a specific icon font. The icon font is defined in the `typeface_bar` variable in the `typeface` config file. The default look Cahuella uses the _Material Design Icons_ font (see file `/etc/regolith/styles/cahuella/typeface`).

You can browse the icon font using the [Gnome Character Map](https://wiki.gnome.org/action/show/Apps/Gucharmap?action=show&redirect=Gucharmap) application (`gucharmap` package):

1. Open Gnome Character Map.
2. Select your icon font in the top left combo.
3. In the _script_ pane select _Common_.
4. Scroll down the characters pane until you find the icons.
5. Double click on the icon you are looking to use and press the _Copy_ button (bottom right).

**Tip:** the icons are ordered alphabetically.

### Staging files and changing icons

Follow these steps to edit the Xresource definitions of the workspace icons used by i3:

1. Stage your Regolith Styles Xresources files, as [described here](../stage-configs).
2. Stage the `/etc/regolith/styles/i3-wm` Xresource file in your user directory, and ensure that your user copy of the Xresource file `#include`s this copy.
3. Edit your copy of the `i3-wm` styles file. Find the workspace name definition starting with `i3-wm.workspace.01.name:` and change the last argument of the `WORKSPACE_NAME` function from the default `glyph` to your icon by simply copying and pasting the icon character. The icon character might not be displayed properly if your editor does not support the icon font, but it will work fine in the bar.

4. Repeat for all required workspaces.

5. After saving this file log out and back in to see the change.

### Adding support for icon fonts in text editors

Atom:

- Append the name of the icon font to `Settings > Editor > Font Familly`.
- Example: `Menlo, Consolas, DejaVu Sans Mono, monospace, Material Design Icons`
