---
title: "Install"
linkTitle: "Install"
weight: 1
description: >
  Install Regolith onto your computer.
---

Based on your preferred installation method, follow one of the following two sections to install Regolith.  Unlike previous versions of Regolith, PPA and ISO installs result in different configurations.  The PPA install favors coexistence with the existing Ubuntu desktop, while the ISO release optimizes for less resource utilization.  Specifically, the ISO install is roughly 1Gb smaller and cold start RAM usage is reduced by about 200Mb as compared to the PPA installation.

## Option 1: Regolith Linux via Installer

At this time an [installer for Regolith 1.5](https://github.com/orgs/regolith-linux/projects/15) is not available, however the 1.4.1 installer can be upgraded to 1.5.2.

1. Download an ISO image of [Regolith R1.4.1](https://github.com/regolith-linux/regolith-desktop/releases/tag/R1.4.1) <i class="fas fa-cloud-download-alt"></i> and then use an OS installation tool such as USB Creator to write the downloaded file into a USB device. Here are Ubuntu guides for performing this action in [Windows](https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-windows#0), [Mac](https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-macos#0), and [Ubuntu](https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-ubuntu#0).
2. Reboot the computer and select the USB flash drive to boot from.
3. Install or run the live environment by providing information when prompted during the setup process.  See [this tutorial](https://tutorials.ubuntu.com/tutorial/tutorial-install-ubuntu-desktop) to learn more about the installation process.
4. When prompted, reboot the computer and login to your new Regolith environment!

The system will automatically upgrade to Regolith 1.5.2 with the following commands:

```bash
$ sudo apt update && sudo apt dist-upgrade
```

## Option 2: Regolith Desktop via Repository (PPA)

1. Add the Regolith release PPA to your system: (See below about [PPA sources](#ppa-sources) for other package archives.)
<pre>
$ sudo add-apt-repository ppa:regolith-linux/release
</pre>
2. Install the Regolith desktop package:<br><i>See below about other [desktop packages](#desktop-packages) available.</i></br>
<pre>
$ sudo apt install regolith-desktop-standard # or regolith-desktop-mobile for laptops
</pre>
4. Reboot the computer, and when logging in select the "Regolith" session in the gear menu (⚙️):

![Ubuntu Login Screen](/regolith-screenshot-login.png)

From this point, please proceed to the next section, [configuration](../configuration) to learn about the most common changes people like to make to Regolith.

Be aware that if you were running stock i3, that package will be uninstalled and the Regolith session type will replace your i3 session type.  This change can be cleanly reverted if you choose to uninstall Regolith, as a Regolith installation does not look at or alter your configuration for stock i3.

## Upgrades

### Regolith 1.4.1 -> Regolith 1.5.2

If your system already has added the `regolith-linux/release` PPA, then upgrading is just matter of performing an upgrade:

```bash
$ sudo apt update && sudo apt dist-upgrade
```

After performing the update, log back in to your system.  However, if you have staged your own i3 config file or Xresources root, read the below section `Upgrading with Customizations`.

### Regolith 1.0 - 1.2 -> Regolith 1.5.2

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
$ mv ~/.Xresources-regolith ~/regolith-backup
$ mv ~/.config/regolith ~/regolith-backup
```

Once these steps are performed, logging back in should result in a "stock" instance of Regolith.  From there, any changes desired to be reintegrated can be done by editing the new versions of the Regolith config files that exist in the `/etc/regolith` directory.

### Edits to `/etc/regolith/...` files

If you've taken shortcuts and manually edited files owned by `root` in `/etc/regolith` or elsewhere, the packaging tool may not update the files, nor mention that stale files have been left.  Even removing the package via `apt remove ...` may not result in a clean system.  In this case, use the purge command to remove the package and manually delete any left over files.  For example, to clean up the i3 config file:

```bash
$ sudo apt purge regolith-i3-gaps-config
$ sudo rm -Rf /etc/regolith/i3 # be sure to backup any important changes
$ sudo apt install regolith-i3-gaps-config
```

### Troubleshooting

#### Status indicators missing after Upgrade

Regolith 1.4 changes the way in which blocks are installed and configured.  This change is necessary to cleanly support the `arm64` architecture and make it simple to swap out components like the notification subsystem.  From 1.4 onward, blocks are installed by the package manager.  See [this HowTo](../../howto/add-remove-blocklets) on adding and configuring blocks.

## Upgrading Ubuntu

The Ubuntu upgrade process automatically removes all PPAs from the system, including Regolith.  The Regolith PPA must be re-added once the Ubuntu upgrade completes.

1. If the standard Ubuntu session is not installed, install it:<br/>`$ sudo apt install ubuntu-session`.  (If you have it already installed this should cause no harm.)
2. Perform the upgrade to the latest Ubuntu version.
3. After rebooting, log into the stock Ubuntu session (not Regolith).
4. Add the Regolith PPA, as the installation process removed PPAs:<br/>`$ sudo add-apt-repository ppa:regolith-linux/release`
5. Upgrade Regolith to the latest version:<br/>`$ sudo apt upgrade && sudo apt install regolith-desktop-standard`
6. Reboot, and now select the Regolith session at the login screen.

NOTE: Some users have reported that `regolith-desktop` is automatically uninstalled during the upgrade.  If this happens, simply run `sudo apt install --reinstall regolith-desktop-standard` after the upgrade completes to restore the Regolith desktop session.

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
$ sudo apt install regolith-desktop i3xrocks-net-traffic i3xrocks-cpu-usage i3xrocks-time #also consider i3xrocks-battery i3xrocks-memory i3xrocks-weather
```
5. Reboot the computer, and when logging in select the "Regolith" session in the gear menu.  At this point you can remove `ubuntu-session` if you don't want the stock GNOME session (optional).

## Uninstallation of `regolith-desktop`

Simply follow these steps to remove Regolith Desktop installed via PPA from your system:

1. Log out of the Regolith session and into the default Ubuntu session.
2. Open a terminal and run: 
```bash
$ sudo apt purge regolith-desktop && sudo apt autoremove
``` 
3. Now remove the PPA:  
```bash
$ sudo add-apt-repository --remove ppa:regolith-linux/release
```
4. You can now safely delete the directory `~/.config/regolith`.

If you are attempting to revert to a stock i3 installation, you will need to uninstall the `i3-gaps` package and reinstall `i3`. 

## PPA Sources

There are 4 sources for Regolith packages.  The `release` PPA is recommended for most users, but another may be better for you based on your needs.  Here is a description of each PPA.

| Name | PPA URI | Freshness | Stability | Description |
|------|---------|-----------|-----------|-------------|
| Unstable | <span class="text-nowrap">`ppa:regolith-linux/unstable`</span> | <span class="badge badge-primary">High</span> | <span class="badge badge-secondary">Low</span> | The `unstable` PPA is recommended for project developers and anyone that's alright with troubleshooting their own system and doesn't mind some problems from time to time. |
| Stable | `ppa:regolith-linux/stable` | <span class="badge badge-primary">Medium</span> | <span class="badge badge-secondary">Medium</span> | The `stable` PPA is for those that would like the latest features, even between official releases. |
| Release | <span class="text-nowrap">`ppa:regolith-linux/release`</span> | <span class="badge badge-primary">Low</span> | <span class="badge badge-secondary">High</span> | The `release` PPA provides bug fixes as they occur and feature updates upon release. |
| r1.3 | `ppa:regolith-linux/r1.3` |  |  | The `r1.3` PPA is locked to the 1.3 release and will not be updated. |
| r1.4.1 | `ppa:regolith-linux/regolith-1.4.1` | | | The `r1.4.1` PPA is locked to the 1.4.1 release and will not be updated. |

## Desktop Packages

Starting with Regolith 1.5, there are a few different desktop packages that users can choose from to get specific package selections for their system and use case.

| Package | Description |
|---------|-------------|
|`regolith-desktop` | Legacy package, no status indicators.  Not recommended for new users. |
|`regolith-desktop-standard` | A reasonable set of default packages for desktop users. |
|`regolith-desktop-minimal` | The bare minimum package set for power users. Not recommended. |
|`regolith-desktop-mobile` | Some additional packages on top of standard for laptop users. |
|`regolith-desktop-complete` | Includes all of the official looks and status indicators available. |


# ARM support

Regolith packages are built for `i386`, `amd64`, `arm64`, and `armhf` architectures.  A stand-alone installer is not available for ARM-based systems such as the Rasberry Pi, however Regolith can be installed via PPA into any existing Ubuntu system running on the supported architectures.  [See above](#option-2-ppa) about installing Regolith via PPA.
