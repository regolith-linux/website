---
title: "Upgrading"
linkTitle: "Upgrading"
weight: 2
description: >
  Upgrading your existing Regolith installation
---

## Upgrades

### Regolith 1.4.1 -> Regolith 1.6

If your system already has added the `regolith-linux/release` PPA, then upgrading is just matter of performing a regular upgrade:

```console
$ sudo apt update && sudo apt dist-upgrade
```

After performing the update, log back in to your system. However, if you have staged your own i3 config file or `Xresources` root, read the below section "[Upgrading with Customizations](#upgrading-with-customizations)".

### Regolith 1.0 - 1.2 -> Regolith 1.6

Due to the age between releases, it's recommended to uninstall very old versions of Regolith and follow the general installation instructions to get Regolith 1.6.

### Upgrading with Customizations

When updating from a major or minor version (eg 1.2 to 1.3), it is often the case that new `Xresources` values and other config files have been updated. Existing `Xresources` and config files such as the i3 config file will need to be updated in order for the upgrade to work properly. If you've customized any Regolith config files or created a stand-alone `Xresources` file (e.g. `~/.Xresources-regolith`), these may need to be updated to take the upgraded files into account. A simple approach to doing this is to move them elsewhere, perform the upgrade, and then reintegrate any desired customizations into the new files:

```console
$ mkdir ~/regolith-backup
$ mv ~/.Xresources-regolith ~/regolith-backup
$ mv ~/.config/regolith ~/regolith-backup
```

Once these steps are performed, logging back in should result in a "stock" instance of Regolith. From there, any changes desired to be reintegrated can be done by [staging]({{< ref "/docs/howtos/stage-configs" >}}) and then editing the new versions of the Regolith config files that exist in the `/etc/regolith` directory. Afterwards, it makes sense to apply your `Xresources` definitions one-by-one to make sure they're still valid and working as intended.

### Edits to `/etc/regolith/...` files

If you've taken shortcuts and manually edited files owned by `root` in `/etc/regolith` or elsewhere, the packaging tool may not update the files, nor mention that stale files have been left. Even removing the package via `apt remove ...` may not result in a clean system. In this case, use the purge command to remove the package and manually delete any left over files. For example, to clean up the i3 config file:

```bash
$ sudo apt purge regolith-i3-gaps-config
$ sudo rm -Rf /etc/regolith/i3 # be sure to backup any important changes
$ sudo apt install regolith-i3-gaps-config
```

## Upgrading Ubuntu

The Ubuntu upgrade process automatically removes all PPAs from the system, including Regolith. The Regolith PPA must be re-added once the Ubuntu upgrade completes.

1. If the standard Ubuntu session is not installed, install it:

```console
$ sudo apt install ubuntu-session
```

If you have it already installed this should cause no harm.

2. Perform the upgrade to the latest Ubuntu version.
3. After rebooting, log into the stock Ubuntu session (not Regolith).
4. Add the Regolith PPA, as the installation process removed PPAs:

```console
$ sudo add-apt-repository ppa:regolith-linux/release
```

5. Upgrade Regolith to the latest version:

```console
$ sudo apt upgrade && sudo apt install regolith-desktop-standard
```

6. Reboot, and now select the Regolith session at the login screen.

**Note**: Some users have reported that `regolith-desktop` is automatically uninstalled during the upgrade. If this happens, simply run `sudo apt install --reinstall regolith-desktop-standard` after the upgrade completes to restore the Regolith desktop session.
