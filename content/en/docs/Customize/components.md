---
title: "Components"
linkTitle: "Components"
weight: 4
description: >
  Change out the UI components that make up Regolith.
---

As previously mentioned, Regolith is a collection of existing open source components that are integrated into a desktop environment.  Due to standards regarding the way UI components should communicate and years of integration between components, for the most part is simple to swap out parts of the UI for others.  

The following table lists each UI component and notes regarding it's mutability:

| UI Component            | Alternatives           | Swappable |
|-------------------|-----------------|------|
| Xorg   | Unknown        | Unknown |
| i3-gaps            | i3-wm, others    | Difficult but possible |
| i3bar      | Polybar, lemonbar, many others.  | Yes, the i3 config file is changed to load a different bar. |
| i3xrocks | i3blocks, barista, many others. | Yes, the i3 config file is changed to load a different status program. |
| Rofication | Dunst, gnome-flashback | Yes, the i3 config file is configured to load the Notification backend and Rofi UI, and i3xrocks is configured to load the blocklet. |
| Remontoire | Conky | Yes, the i3 config file is changed to load a different help program. |
| gdm3 | lightdm, sddm, xdm, others. | This is configured in Ubuntu. Installing an alternative session manager should present a prompt to specify which to use. |
| gnome-flashback | None | No | 

Due to the breadth of the topic, more details are not available here.  Experimenting with different UI components is a fun way to learn more about the internals of the operating system.  It is recommended to first experiment in a VM running Regolith to avoid breaking your working environment.