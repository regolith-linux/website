---
title: "Change the default terminal"
weight: 3
description: >
  Change which terminal Regolith loads by default.
---

The default terminal that ships with Regolith, st-term, is a minimal terminal application.  There are others that offer more features.  To update Regolith to use your (already installed) terminal of choice, we just need to update the i3 config file.  In this example we'll use `gnome-terminal` but substitute your term command as needed.

1. Stage your own i3 config file [(tutorial)](../stage-configs), then open `~/.config/regolith/i3/config` in your editor of choice.
2. Remap the i3-wm config to launch `gnome-terminal` instead of `st` by editing `~/.config/regolith/i3/config` and changing the following line:
From: `bindsym $mod+Return exec st`
To: `bindsym $mod+Return exec gnome-terminal`
3. Save the file and exit the editor.
3. If you've just staged your i3 config file, you'll need to log back in to have the changes take effect.  This only needs to happen once though, and so if you've already made a copy previously and logged in since, just reload i3 with `⊞ Win`-`shift`-`r`.
4. (Optional) Update your system to default to your terminal of choice by running `sudo update-alternatives --config x-terminal-emulator` (See [this page](https://askubuntu.com/questions/578293/is-it-possible-to-remove-the-default-terminal-and-replace-it-with-some-other-ter) for more details)