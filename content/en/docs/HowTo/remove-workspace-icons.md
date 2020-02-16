---
title: "Change workspace labels"
weight: 7
description: >
  Change the workspace names as displayed in the bar.
---

### Remove everything but the workspace number

Follow these steps to edit the Xresource definitions of the workspace labels used by i3:

1. Stage your Regolith Styles Xresources files, as [described here](../stage-configs).
2. Stage the `/etc/regolith/styles/i3-wm` Xresource file in your user directory, and ensure that your user copy of the Xresource file `#include`s this copy.
3. Edit your copy of the `i3-wm` styles file. This file uses C-style macros to generate the Pango markup for each workspace label.  There are various ways of changing the macros to strip out the icons, but this may be the most concise.  Replace:
```
#define WORKSPACE_NAME(INDEX, FONT, COLOR, GLYPH) INDEX:<span font_desc=FONT> INDEX </span><span foreground=COLOR>GLYPH</span>
```
with:
```
#define WORKSPACE_NAME(INDEX, FONT, COLOR, GLYPH) 
```
4. After saving this file log out and back in to see the change.

### Creating workspace labels

Some users prefer to title their workspaces based a theme, such as `terminal`, `web`, etc.  To do this, make modifications to your user copy of `/etc/regolith/styles/i3-wm` similarly to:

```
i3-wm.workspace.01.name: Terminal
i3-wm.workspace.02.name: Web
i3-wm.workspace.03.name: Chat
```