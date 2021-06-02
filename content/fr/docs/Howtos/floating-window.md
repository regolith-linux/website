---
title: "Launch an app in a Floating Window"
description: >
  Most GUI apps can be launched in floating window mode.
---

Most X11 applications support a flag `--class` to specify the `class` under which the application runs.  Regolith is configured such that apps with a class of `floating_window` will launch with i3's floating window mode.

## Examples

### `gnome-terminal`

Launch the terminal in floating mode:

```console
$ gnome-terminal --class=floating_window
```

### Firefox

Launch Firefox in floating mode:

```console
$ firefox --class=floating_window
```
