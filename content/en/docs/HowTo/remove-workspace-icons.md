---
title: "Change workspace labels"
weight: 7
description: >
  Change the workspace names as displayed in the bar.
---

1. You'll need to stage the Regolith Styles Xresource files as [described here](../stage-configs).
2. Then stage the `/etc/regolith/styles/i3-wm` Xresource file in your user directory, and ensure that your user copy of the Xresource file `#include`s this copy.
3. Modify the styles to your preference.
4. After saving the styles file log out and back in to see the change.

### Remove everything but the workspace number

Follow these steps to edit the Xresource definitions of the workspace labels used by i3:

Edit your copy of the `i3-wm` styles file. This file uses C-style macros to generate the Pango markup for each workspace label.  There are various ways of changing the macros to strip out the icons, but this may be the most concise.  Replace:
```
#define WORKSPACE_NAME(INDEX, FONT, COLOR, GLYPH) INDEX:<span font_desc=FONT> INDEX </span><span foreground=COLOR>GLYPH</span>
```
with:
```
#define WORKSPACE_NAME(INDEX, FONT, COLOR, GLYPH) 
```

### Creating workspace labels

Some users prefer to title their workspaces based a theme, such as `terminal`, `web`, etc.  To do this, make modifications to your user copy of `/etc/regolith/styles/i3-wm` similarly to:

```
i3-wm.workspace.01.name: 1: Terminal
i3-wm.workspace.02.name: 2: Web
i3-wm.workspace.03.name: 3: Chat
```
