---
title: "Components"
linkTitle: "Components"
weight: 4
description: >
  Change out the UI components that make up Regolith.
---

As previously mentioned, Regolith is a collection of existing open source components that are integrated into a desktop environment.  Due to standards regarding the way UI components should communicate and years of integration between components, for the most part is simple to swap out parts of the UI for others.  

The following table lists each UI component and notes regarding it's mutability:

| UI Component | Purpose | Alternatives | Swappable |
|---|---|---|---|
| Xorg | Display System | Unknown | Unknown |
| i3-gaps | Window Manager | i3-wm, others | Difficult but possible |
| i3bar | Desktop Bar | Polybar, lemonbar, others | Yes, by changing the i3 config file. |
| i3xrocks | Status Indicator Manager | i3blocks, barista, others | Yes, by changing the i3 config file. |
| Rofication | Desktop Notification Manager | Dunst, gnome-flashback | Yes, by changing the i3 config file to load the Notification backend and Rofi UI, and configuring i3xrocks to load the blocklet. |
| Remontoire | Keybinding Viewer | Conky | Yes, by changing the i3 config file to load a different help program. |
| gdm3 | Login Manager | lightdm, sddm, xdm, others | This is configured in Ubuntu. Installing an alternative session manager should present a prompt to specify which to use. |
| gnome-flashback | Desktop Environment | None | No |

Due to the breadth of the topic, more details are not available here.  Experimenting with different UI components is a fun way to learn more about the internals of the operating system.  It is recommended to first experiment in a VM running Regolith to avoid breaking your working environment.
