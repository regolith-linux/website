---
title: "Working with Applications"
linkTitle: "Working with Applications"
weight: 1
description: >
  Concepts and tips for working with apps in Regolith.
---

As mentioned in the [Getting Started](../../getting-started/basics) section, <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">space</span></span> causes i3 to execute Rofi to present a list of apps.  Once launched, the application selected will open a window on the currently active workspace.  If other windows are already present on this workspace, they will be resized to allow the new window to also be placed without overlapping or otherwise obstructing the existing windows.

## Window Layout

<span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">backspace</span></span> can be used to toggle between horizontal and vertical layout modes, which will apply to the *next launched application*.  In this way, windows in a workspace can divide the screen into portions relative to the desired importance of the user.

In addition to toggling layout orientation, existing windows can be moved relative to their neighbors with <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">shift</span> <span class="badge badge-warning">↑ ↓ ← →</span></span> (arrow keys) or VIM-style arrow keys <span class="badge badge-warning">k j h l</span>.  Or, <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">tab</span></span> and <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">shift</span> <span class="badge badge-warning">tab</span></span> can be used to move back and forth between active workspaces.

Windows can also be directly moved to other workspaces.  The bar will indicate all active workspaces as well as the currently focused workspace.  <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">shift</span> <span class="badge badge-warning">[0-9]</span></span> will cause the currently focused window to be moved to the workspace number selected.

Users can navigate to windows via <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">[0-9]</span></span> but can also directly navigate to a specific window with <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">ctrl</span> <span class="badge badge-warning">space</span></span>.

## Quit an Application.

Unfortunately in Linux there is no convention that all applications follow for how to quit.  In traditional desktop environments, users often rely on the close box of the window or a global menu system.  Because Regolith has a reduced UI, depending on the application these common mouse-driven ways of exiting apps may not be available.  Depending on the app, one of the following keybindings may cause it to exit:

* <span class="text-nowrap"><span class="badge badge-warning">ctrl</span> <span class="badge badge-warning">w</span></span>
* <span class="text-nowrap"><span class="badge badge-warning">ctrl</span> <span class="badge badge-warning">W</span></span>
* <span class="text-nowrap"><span class="badge badge-warning">ctrl</span> <span class="badge badge-warning">q</span></span>
* <span class="text-nowrap"><span class="badge badge-warning">ctrl</span> <span class="badge badge-warning">Q</span></span>
* <span class="text-nowrap"><span class="badge badge-warning">ctrl</span> <span class="badge badge-warning">d</span></span>
* <span class="text-nowrap"><span class="badge badge-warning">alt</span> <span class="badge badge-warning">F4</span></span>

If none of these commands work, it may be that the application has crashed and is not responding to requests from the window manager.  In this case you can kill the focused application with <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">shift</span> <span class="badge badge-warning">q</span></span>