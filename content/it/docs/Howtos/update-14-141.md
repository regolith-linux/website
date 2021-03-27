---
title: "Upgrade Regolith Linux 1.4 to 1.4.1"
description: >
  Updating a Regolith Linux 1.4 ISO install to 1.4.1
---

If you've installed Regolith via the ISO, a few minor changes were made to address bugs found in R1.4. Most of the fixes will be installed automatically by applying package updates, however a few items must be performed manually.

## Remove deprecated touchpad driver

An obsolete driver was mistakenly included with the Regolith 1.4 ISO install that conflicts with GNOME touchpad settings. Perform these steps to fix the touchpad:

```console
$ sudo apt remove xserver-xorg-input-synaptics
```

## Add Regolith boot sequence

The ISO release now includes an unbranded boot animation, rather than keeping with the default Ubuntu branded experience. Updating this boot-up theme (also known as a Plymouth theme) also enables users to enter a password if they've setup an encrypted filesystem.

```console
$ sudo apt install plymouth-theme-regolith
$ sudo update-alternatives --config default.plymouth
```

From the prompt ensure that the Regolith configuration is selected.
