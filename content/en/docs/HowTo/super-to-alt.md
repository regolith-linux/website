---
title: "Change the super key mapping"
weight: 2
description: >
  Change the i3 config to use the Alt key instead of Super for keybindings.
---

Depending on your preference (or keyboard), you may prefer a key other than `Super` to be used as the primary i3 keybinding.  Follow these steps to update your i3 configuration:

1. Stage your own i3 config file [(tutorial)](../stage-configs), then open `~/.config/regolith/i3/config` in your editor of choice.
2. The first non-comment line should read set $mod Mod4 .
3. Replace `Mod4` with `Mod1` for `alt` or [check here](https://i3wm.org/docs/userguide.html#keybindings) for other options.
4. If you've just staged your i3 config file, you'll need to log back in to have the changes take effect.  This only needs to happen once though, and so if you've already made a copy previously and logged in since, just reload i3 with `⊞ Win`-`shift`-`r`.
