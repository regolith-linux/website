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

As mentioned previously, a compositor is a UI component that applies visual effects to windows before they are rendered on-screen. Many desktop environments integrate a compositor directly into the window manager, making it difficult to switch out or disable. In Regolith, the compositor is defined as a pluggable "extension point" in the packaging system. This means that compositors can be switched out simply by installing the packages that contain them. The underlying packaging system will ensure there are no conflicts and that all the dependencies of a given compositor are also installed.

## Finding Available Compositors

The following command will list all compositors configured to work with Regolith:

```
apt search regolith-compositor-
```

At least the following three compositors should be available:

| Package Name                    | Backend                                   | Description                                                                                                      |
| ------------------------------- | ----------------------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| regolith-compositor-picom-glx   | [Picom](https://github.com/yshui/picom)   | The default compositor for Regolith. This compositor is modern, maintained, and handles screen tearing.          |
| regolith-compositor-compton-glx | [Compton](https://github.com/yshui/picom) | Previously the default compositor for Regolith. This is an older version of Picom before it's name changed.      |
| regolith-compositor-xcompmgr    | xcompmgr                                  | An early compositor that may offer more consistent performance if more complex compositors are problematic.      |
| regolith-compositor-none        | N/A                                       | A no-op package that does not run a Compositor. Best for absolute UI performance, at the cost of visual effects. |

## Installing a Compositor

{{% pageinfo %}}
Due to the way that the compositor is managed by i3-wm, you must log out and back in for compositor changes to take effect. Restarting i3 is not sufficient.
{{% /pageinfo %}}

Run the following package install command to swap out the compositor. In this case we'll run `xcompmgr`:

```console
$ apt install regolith-compositor-xcompmgr
```

Log back in and the new compositor should be loaded. You can verify by checking the process list for `xcompmgr`:

```console
$ ps aux | grep xcompmgr
```

## Overriding a Compositor Configuration

### Compton/Picom

To provide your own Compton/Picom compositor config, copy the default or create your own and save it as `~/.config/regolith/compton/config`. Upon next session it will be loaded instead of the default config `/etc/regolith/compton/config`.

### xcompmgr

To provide your own xcompmgr compositor config, copy the default or create your own and save it as `~/.config/regolith/xcompmgr/config`
