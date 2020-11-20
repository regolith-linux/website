---
title: "Launch Default i3 Session"
weight: 19
description: >
  Install package `i3-gaps-session` to keep using i3 without uninstalling Regolith.
---

To do so on Ubuntu, run `sudo apt install i3-gaps-session` to add an option on login that starts vanilla i3-gaps without regolith.


## Use Case
This is useful for, say, running an application that does not integrate well with Gnome. For example, Spotify's unmaintained official Linux client mishandle's it's file selection dialogue and crashes when

    1. Setting user profile photo
    2. Setting album cover photo
    3. Adding a local directory to the library paths

under Gnome and Regolith. Switching to vanilla i3 solves the crash.

## Source

See [kgilmer]()'s [comment](https://github.com/regolith-linux/regolith-desktop/issues/21#issuecomment-729776535).