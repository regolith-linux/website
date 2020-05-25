---
title: "Notifications"
linkTitle: "Notifications"
weight: 2
description: >
  Details regarding desktop notifications.
---

Regolith 1.3 introduces the integration of [Rofication](https://github.com/DaveDavenport/Rofication) into the environment.  Previous versions relied on a built-in notification system within <code>gnome-flashback</code> but the UI was distracting.  Rofication relies on a notification daemon and Rofi-based front end.  A block in the bar shows the number of notifications the user has.  When a new notification is received, this number is incremented by one.  There is no other alert or other UI that would notify the user of the new message.  If a more agressive notification UI is desired, [dunst](https://dunst-project.org/) is recommended.

## Managing Notifications

Next to the bell icon in the bar is the current number of notifications.  To view and delete them, select <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">n</span></span> and a menu will load.  Notifications can be read and then deleted with <span class="badge badge-warning">delete</span> and the notification window can be dismissed with <span class="badge badge-warning">escape</span>.  All low-priority notifications can be deleted at once with <span class="text-nowrap"><span class="badge badge-warning">shift</span> <span class="badge badge-warning">delete</span></span> from within the notification menu.