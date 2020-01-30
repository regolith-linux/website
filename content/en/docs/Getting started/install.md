---
title: "Installation"
linkTitle: "Installation"
weight: 1
description: >
  Install Regolith on your computer.
---

Based on your preferred installation method, follow one of the following two sections to install Regolith:

## Option 1: Ubuntu Installer

1. Download an [ISO image <i class="fas fa-cloud-download-alt"></i>](https://sourceforge.net/projects/regolith-linux/files/regolith-linux-r1.3/) (both the Ubuntu LTS 18.04 and most recent 19.10 bases are available) and then use an OS installation tool such as USB Creator to write the downloaded file into a USB device. Here are Ubuntu guides for performing this action in [Windows](https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-windows#0), [Mac](https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-macos#0), and [Ubuntu](https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-ubuntu#0).
2. Reboot the computer and select the USB flash drive to boot from.
3. Install or run the live environment by providing information when prompted during the setup process.  See [this tutorial](https://tutorials.ubuntu.com/tutorial/tutorial-install-ubuntu-desktop) to learn more about the installation process.
4. When prompted, reboot the computer and login to your new Regolith environment!

## Option 2: PPA

1. See below about [PPA sources](#ppa-sources), and add your chosen PPA to your system:
<pre>
$ sudo add-apt-repository ppa:regolith-linux/release
</pre>
2. Install the Regolith desktop package:
<pre>
$ sudo apt install regolith-desktop
</pre>
3. Reboot the computer, and when logging in select the "Regolith" session in the gear menu (⚙️):

![Ubuntu Login Screen](/r13-dev-site/regolith-screenshot-login.png)

## Reinstallation

In the case that the Regolith desktop environment becomes corrupted or otherwise unbootable, follow these steps to reset it.  No user files will be removed as part of this process:

1. Login to the stock Ubuntu session.  If this session is not available, install it with `sudo apt install ubuntu-session`.
2. Uninstall Regolith from within the Ubuntu session:
```bash
$ sudo apt remove regolith-*
* sudo apt autoremove
```
3. Verify that no regolith packages are still installed with `apt list --installed | grep -i regolith`.  The command should not return any packages.  If it does, manually uninstall them with `sudo apt remove <package>`.
4. Reinstall Regolith:
```
$ sudo apt install regolith-desktop
```
5. Reboot the computer, and when logging in select the "Regolith" session in the gear menu.

## Uninstallation of `regolith-desktop`

Simply follow these steps to remove Regolith from your system:

1. Log out of the Regolith session and into the default Ubuntu session.
2. Open a terminal and run: 
```bash
$ sudo apt remove regolith-desktop regolith-st && sudo apt autoremove
``` 
3. Now remove the PPA:  
```bash
$ sudo add-apt-repository --remove ppa:regolith-linux/release
```
4. To restore your GNOME settings, run: 
```bash 
$ source ~/.regolith-gnome-backup
```
5. You can safely delete the file `~/.config/regolith`.

## PPA Sources

There are 4 sources for Regolith packages for release 1.3.  The `release` PPA is recommended for most users, but another may be better for you based on your needs.  Here is a description of each PPA.

| Name | PPA URI | Freshness | Stability | Description |
|------|---------|-----------|-----------|-------------|
| Unstable | `ppa:regolith-linux\unstable` | <span class="badge badge-primary">Very High</span> | <span class="badge badge-secondary">Low</span> | The `unstable` PPA is recommended for project developers and anyone that's alright with troubleshooting their own system and doesn't mind some problems from time to time. |
| Stable | `ppa:regolith-linux\stable` | <span class="badge badge-primary">High</span> | <span class="badge badge-secondary">Medium</span> | The `stable` PPA is for those that would like the latest features, even between official releases. |
| Release | `ppa:regolith-linux\release` | <span class="badge badge-primary">Low</span> | <span class="badge badge-secondary">High</span> | The `release` PPA provides bug fixes as they occur and feature updates upon release. |
| r1.3 | `ppa:regolith-linux\r1.3` | <span class="badge badge-primary">Very Low</span> | <span class="badge badge-secondary">Very High</span> | The `r1.3` PPA is locked to the 1.3 release and will not be updated. |
