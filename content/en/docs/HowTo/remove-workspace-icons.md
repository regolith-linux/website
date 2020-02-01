---
title: "Remove workspace icons in bar"
weight: 7
description: >
  Change which terminal Regolith loads by default.
---

Follow these steps to edit the Xresource definitions of the workspace labels used by i3:

1. Stage your Regolith Styles Xresources files, as [described here](../stage-configs).
2. Stage the `/etc/regolith/styles/i3-wm` Xresource file in your user directory, and ensure that your user copy of the Xresource file `#include`s this copy.
3. Edit your copy of the `i3-wm` styles file. This file uses C-style macros to generate the Pango markup for each workspace label.  There are various ways of changing the macros to strip out the icons, but this may be the most consise.  Replace:
```
#define WORKSPACE_NAME(INDEX, FONT, COLOR, GLYPH) INDEX:<span font_desc=FONT> INDEX </span><span foreground=COLOR>GLYPH</span>
```
with:
```
#define WORKSPACE_NAME(INDEX, FONT, COLOR, GLYPH) 
```
4. After saving this file log out and back in to see the change.