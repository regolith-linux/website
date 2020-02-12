---
title: "Change the terminal font size"
weight: 14
description: >
  Change the font used in the terminal.
---

{{% pageinfo %}}
This tutorial assumes the usage of the default Regolith look `cahuella`.  If you've updated to something else, substitute that look's name for `cahuella` below.
{{% /pageinfo %}}

You may prefer a different font size in the terminal than what's set by default.  This tutorial requires us to make a single change to the Xresource file that defines the font used in `st-term`, the default terminal used by Regolith.

1. Stage your own Xresource file [(tutorial)](../stage-configs), then open `~/.Xresources-regolith` in your editor of choice.
2. The file should contain a single line which is an `#include` to another Xresource file.  Let's copy the contents of that referenced file into our Xresource file rather than having the include.  To do this, exit out of the editor and run `cp /etc/regolith/styles/cahuella/root ~/.Xresources-regolith`
3. Ok, now back in editing the file, it should look something like this:
```
! -- Styles - Colors
#include "/etc/regolith/styles/cahuella/color"

! -- Styles - Fonts
#include "/etc/regolith/styles/cahuella/typeface"

! -- Styles - Theme
#include "/etc/regolith/styles/cahuella/theme"

! -- Applications
! These files map values defined above into specific app settings.
#include "/etc/regolith/styles/st-term"
#include "/etc/regolith/styles/i3-wm"
#include "/etc/regolith/styles/i3xrocks"
#include "/etc/regolith/styles/rofi"
#include "/etc/regolith/styles/gnome"
```
4. The setting we need to change is set in `/etc/regolith/styles/cahuella/typeface`.  Let's create our own copy of that and reference it from our Xresource file.  You'll need to specify the path to the file explicitly, and cannot use `$HOME` or `~/` as a shortcut.  First, update the line in your open editor to point to a file we haven't created yet:
```
#include "/etc/regolith/styles/cahuella/typeface"
```
...should be changed to:
```
#include "/home/[YOUR USER NAME]/.Xresources-typeface"
```
5. Now lets create that file:
```bash
$ cp /etc/regolith/styles/cahuella/typeface ~/.Xresources-typeface
```
6. Finally, we can edit the file to change the font specification.  Load ~/.Xresources-typeface into a text editor, and change:
```
#define typeface_terminal   Source Code Pro:pixelsize=16:antialias=true:autohint=true
```
...to your preferred font specification, or this for testing:
```
#define typeface_terminal   Source Code Pro:pixelsize=24:antialias=true:autohint=true
```

### Verification

After saving the file, you can run `regolith-look refresh` or `xrdb -merge ~/.Xresources-regolith` for the changes to take effect.  If you launch a new terminal, your updated font specification should be in effect.  You can verify that the setting was changed by checking the value on the command line:
```bash
$ xrescat St.font
```
