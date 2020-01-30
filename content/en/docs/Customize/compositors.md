---
title: "Compositors"
linkTitle: "Compositors"
weight: 3
description: >
  Configure visual effects in Regolith.
---

{{% pageinfo %}}
Pay special attention to this section if you are experiencing odd visual glitches or slow graphics performance.
{{% /pageinfo %}}

As mentioned previously, a compositor is a UI component that visual effects to windows before they are rendered on-screen.  Many desktop environments integrate a compositor directly into the window manager, making it difficult to switch out or disable.  In Regolith, the compositor is defined as a pluggable "extension point" in the packaging system. This means that compositors can be switched out simply by installing the packages that contain them.  The underlying packaging system will ensure there are no conflicts and that all the dependencies of a given compositor are also installed.

## Finding Available Compositors

The following command will list all compositors configured to work with Regolith:
```bash
apt list | grep regolith-compositor-
```

At least the following three compositors should be available:

| Package Name            | Backend           | Description |
|-------------------|-----------------|------|
| regolith-compositor-compton-glx   | [Compton](https://github.com/yshui/picom)        | The default compositor for Regolith.  This compositor is modern, maintained, and handles screen tearing.|
| regolith-compositor-xcompmgr            | xcompmgr     | An early compositor that may offer more consistent performance if `compton-glx` is promblematic |
| regolith-compositor-none      |   | A no-op package that does not run a Compositor. Best for absolute UI performance, at the cost of visual effects. |

## Installing a Compositor

Run the following package install command to swap out the compositor.  In this case we'll run `xcompmgr`:
```bash
$ apt install regolith-compositor-xcompmgr
```

Log back in and the new compositor should be loaded.  You can verify by checking the process list for `xcompmgr`:
```bash
$ ps aux | grep xcompmgr
```
