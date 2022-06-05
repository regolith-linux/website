---
title: "Praca z aplikacjami"
linkTitle: "Praca z Aplikacji"
weight: 1
description: >
  Koncepcje i wskazówki dotyczące pracy z aplikacjami w Regolith
---

As mentioned in the [Getting Started]({{< ref "/docs/getting started/basics" >}}) section, {{< keys "super,space">}} causes i3 to execute "Rofi" to present a list of apps. Once launched, the application selected will open a window on the currently active workspace. If other windows are already present on this workspace, they will be resized to allow the new window to also be placed without overlapping or otherwise obstructing the existing windows.

## Układ okna

{{< keys "super,backspace" >}} can be used to toggle between horizontal and vertical layout modes, which will apply to the _next launched application_. In this way, windows in a workspace can divide the screen into portions relative to the desired importance of the user. A blue border will appear on the bottom or right of the window to indicate the current layout mode.

In addition to toggling layout orientation, existing windows can be moved relative to their neighbors with {{< keys "super,shift,↑,↓,←,→" >}} (arrow keys) or VIM-style arrow keys {{< keys "k,j,h,l" >}}. Additionally, {{< keys "super,tab" >}} and {{< keys "super,shift,tab" >}} can be used to move back and forth between active workspaces.

Windows can also be directly moved to other workspaces. The bar will indicate all active workspaces as well as the currently focused workspace. {{< keys "super,shift,[0-9]" >}} will cause the currently focused window to be moved to the workspace number selected.

Users can navigate to a workspace with {{< keys "super,[0-9]" >}} and can navigate to a specific window with {{< keys "super,ctrl,space" >}}.

## Wyjście z Programu

Any application can be safely closed via {{< keys "super,shift,q" >}}. Crashed or otherwise unresponsive apps can be killed via {{< keys "super,alt,q" >}}.
