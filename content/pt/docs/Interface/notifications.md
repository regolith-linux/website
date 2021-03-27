---
title: "Notifications"
linkTitle: "Notifications"
weight: 2
description: >
  Details regarding desktop notifications
---

Regolith 1.3 introduces the integration of [Rofication](https://github.com/DaveDavenport/Rofication) into the environment. Previous versions relied on a built-in notification system within `gnome-flashback` but the UI was distracting. Rofication relies on a notification daemon and Rofi-based front end. A block in the bar shows the number of notifications the user has. When a new notification is received, this number is incremented by one. There is no other alert or other UI element notifying the user of the new message. If a more aggressive notification UI is desired, [dunst](https://dunst-project.org/) is recommended.

## Managing Notifications

Next to the bell icon in the bar is the current number of notifications. To view and delete them, select {{< keys "super,n" >}} and a menu will load. Notifications can be read and then deleted with {{< keys "delete" >}} and the notification window can be dismissed with {{< keys "Esc" >}}. All low-priority notifications can be deleted at once with {{< keys "shift,delete" >}} from within the notification menu.
