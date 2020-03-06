---
title: "Change Notification Systems"
weight: 10
description: >
  Disable Rofication and add another notification system.
---

Regolith ships with a notification system called [Rofication](https://github.com/DaveDavenport/Rofication).  This system is designed to work in the background and not use pop-ups as a way of alerting the user to a new notification.  Rather, a small bar item displays the current number of unread notifications and a dialog can be loaded to view and delete them.  This page is allows you to enable a more traditional notification UI.

For this exercise we'll use [dunst](https://dunst-project.org/) but similar steps can be used for other notification components.

1. Stage your own i3 config file [(tutorial)](../stage-configs) and i3xrocks config file.
2. Disable the Rofication backend by removing or commenting out the following line from `~/.config/regolith/i3/config`:
```
# exec --no-startup-id /usr/share/rofication/rofication-daemon.py
```
3. Disable the Rofication front end by editing `~/.config/regolith/i3xrocks/config` and commenting out the rofication blocklet:
```conf
...
# Rofication
#
# Displays notifications.
#[rofication]
#command=/usr/share/i3xrocks/rofication-statusi3blocks.py

```
4. Install `dunst`:
```bash
$ sudo apt install dunst
```
5. Log out and back in.  Test your notifications with `notify-send test123`.  You should see a pop-up from `dunst`.
