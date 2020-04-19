---
title: "Installation"
linkTitle: "Installation"
weight: 1
description: >
  Install Regolith on your computer.
---

Based on your preferred installation method, follow one of the following two sections to install Regolith:

## Option 1: Ubuntu Installer

{{% pageinfo %}}
The ISO installer for Ubuntu 20.04 Focal Fossa will be released shortly after Ubuntu is released.
{{% /pageinfo %}}

1. Download an [ISO image <i class="fas fa-cloud-download-alt"></i>](https://sourceforge.net/projects/regolith-linux/files/regolith-linux-r1.3/) (both the Ubuntu LTS 18.04 and most recent 19.10 bases are available) and then use an OS installation tool such as USB Creator to write the downloaded file into a USB device. Here are Ubuntu guides for performing this action in [Windows](https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-windows#0), [Mac](https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-macos#0), and [Ubuntu](https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-ubuntu#0).
2. Reboot the computer and select the USB flash drive to boot from.
3. Install or run the live environment by providing information when prompted during the setup process.  See [this tutorial](https://tutorials.ubuntu.com/tutorial/tutorial-install-ubuntu-desktop) to learn more about the installation process.
4. When prompted, reboot the computer and login to your new Regolith environment!

## Option 2: PPA

1. See below about [PPA sources](#ppa-sources), and add your chosen PPA to your system:
<pre>
$ sudo add-apt-repository ppa:regolith-linux/stable
</pre>
2. Install the Regolith desktop package:
<pre>
$ sudo apt install regolith-desktop
</pre>
3. Reboot the computer, and when logging in select the "Regolith" session in the gear menu (⚙️):

![Ubuntu Login Screen](/regolith-screenshot-login.png)

## Upgrades

To upgrade from Regolith 1.0 - 1.2, the PPA URL must be changed and then new package versions are applied by the package manager:
```bash
$ sudo add-apt-repository --remove ppa:kgilmer/regolith-stable
$ sudo add-apt-repository ppa:regolith-linux/release
$ sudo apt update && sudo apt dist-upgrade
```
After performing these steps, you'll need to log out and back again.

### Upgrading with Customizations

When updating from a major or minor version (eg 1.2 to 1.3), it is often the case that new Xresource values and other config files have been updated.  Existing Xresource and config files such as the i3 config file will need to be updated in order for the upgrade to function properly.  If you've customized any Regolith config files or created a stand-alone Xresource file (`~/.Xresources-regolith`), these may need to be updated to take the upgraded files into account.  A simple approach to doing this is to move them elsewhere, perform the upgrade, and then reintegrate any desired customizations into the new files:

```bash
$ mkdir ~/regolith-backup
$ cp ~/.Xresources-regolith ~/regolith-backup
$ cp -r ~/.config/regolith/i3* ~/regolith-backup
$ rm -Rf ~/.config/regolith/flags
```

Once these steps are performed, logging back in should result in a "stock" instance of Regolith.  From there, any changes desired to be reintegrated can be done by editing the new versions of the Regolith config files that exist in the `/etc/regolith` directory.

### Edits to `root`-owned files

If you've taken shortcuts and manually edited files owned by `root` in `/etc/regolith` or elsewhere, the packaging tool may not update the files, nor mention that stale files have been left.  Even removing the package via `apt remove ...` may not result in a clean system.  In this case, use the purge command to remove the package and manually delete any left over files.  For example, to clean up the i3 config file:

```bash
$ sudo apt purge regolith-i3-gaps-config
$ sudo rm -Rf /etc/regolith/i3 # be sure to backup any important changes
$ sudo apt install regolith-i3-gaps-config
```

## Upgrading Ubuntu

Upgrading from Ubuntu 18.04, 18.10, 19.04, or 19.10 to 20.04 requires that the Regolith PPA be re-added once the Ubuntu upgrade completes.

1. If the standard Ubuntu session is not installed, install it:<br/>`$ sudo apt install ubuntu-session`.  (If you have it already installed this should cause no harm.)
2. Perform the upgrade to 20.04.
3. After rebooting, log into the stock Ubuntu session, not Regolith.
4. Add the Regolith PPA, as the installation process removed PPAs:<br/>`$ sudo add-apt-repository ppa:regolith-linux/stable`
5. Upgrade Regolith to the latest version:<br/>`$ sudo apt upgrade && sudo apt install regolith-desktop`
6. Reboot, and now select the Regolith session at the login screen.

NOTE: Some users have reported that `regolith-desktop` is automatically uninstalled during the upgrade.  If this happens, simply run `sudo apt install --reinstall regolith-desktop` after the upgrade completes to restore the Regolith desktop session.

## Reinstallation

In the case that the Regolith desktop environment becomes corrupted or otherwise unbootable, follow these steps to reset it.  No user files will be removed as part of this process:

1. Login to the stock Ubuntu session.  If this session is not available, install it with `sudo apt install ubuntu-session`.  If you are unable to login, type <span class="text-nowrap"><span class="badge badge-warning">ctrl</span> <span class="badge badge-warning">alt</span> <span class="badge badge-warning">F2</span></span> to access a TTY.  After installing `ubuntu-session`, you will have the option to select the `Ubuntu` session type in the login screen.
2. Uninstall Regolith from within the Ubuntu session:
```bash
$ sudo apt purge regolith-*
$ sudo apt autoremove
$ rm -Rf ~/.config/regolith/flags
```
3. Verify that no regolith packages are still installed with `apt list --installed | grep -i regolith`.  The command should not return any packages.  If it does, manually uninstall them with `sudo apt purge <package>`.
4. Reinstall Regolith:
```
$ sudo apt install regolith-desktop
```
5. Reboot the computer, and when logging in select the "Regolith" session in the gear menu.  At this point you can remove or keep `ubuntu-session`.

## Uninstallation of `regolith-desktop`

Simply follow these steps to remove Regolith from your system:

1. Log out of the Regolith session and into the default Ubuntu session.
2. Open a terminal and run: 
```bash
$ sudo apt purge regolith-desktop regolith-st && sudo apt autoremove
``` 
3. Now remove the PPA:  
```bash
$ sudo add-apt-repository --remove ppa:regolith-linux/release
```
4. To restore your GNOME settings, run: 
```bash 
$ source ~/.regolith-gnome-backup
```
5. You can now safely delete the directory `~/.config/regolith`.

## PPA Sources

There are 4 sources for Regolith packages.  The `release` PPA is recommended for most users, but another may be better for you based on your needs.  Here is a description of each PPA.

| Name | PPA URI | Freshness | Stability | Description |
|------|---------|-----------|-----------|-------------|
| Unstable | <span class="text-nowrap">`ppa:regolith-linux/unstable`</span> | <span class="badge badge-primary">Very High</span> | <span class="badge badge-secondary">Low</span> | The `unstable` PPA is recommended for project developers and anyone that's alright with troubleshooting their own system and doesn't mind some problems from time to time. |
| Stable | `ppa:regolith-linux/stable` | <span class="badge badge-primary">High</span> | <span class="badge badge-secondary">Medium</span> | The `stable` PPA is for those that would like the latest features, even between official releases. |
| Release | <span class="text-nowrap">`ppa:regolith-linux/release`</span> | <span class="badge badge-primary">Low</span> | <span class="badge badge-secondary">High</span> | The `release` PPA provides bug fixes as they occur and feature updates upon release. |
| r1.3 | `ppa:regolith-linux/r1.3` | <span class="badge badge-primary">Very Low</span> | <span class="badge badge-secondary">Very High</span> | The `r1.3` PPA is locked to the 1.3 release and will not be updated except for critical bug fixes. |
