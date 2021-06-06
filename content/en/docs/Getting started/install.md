---
title: "Install"
linkTitle: "Install"
weight: 1
description: >
  Install Regolith onto your computer
---

Based on your preferred installation method, follow one of the following two sections to install Regolith. Unlike previous versions of Regolith, PPA and ISO installs result in different configurations. The PPA install favors coexistence with the existing Ubuntu desktop, while the ISO release optimizes for less resource utilization.

## Option 1: Regolith Linux via Installer

1. Download an ISO image of [Regolith R1.6 on Ubuntu 21.04 (Hirsute)](https://github.com/regolith-linux/regolith-ubuntu-iso-builder/releases/download/release-release-hirsute-hirsute_standard-1.6.0/Regolith_1.6.0_hirsute.iso) <i class="fas fa-cloud-download-alt"></i> or [Regolith R1.6 on Ubuntu 20.04 (Focal)](https://github.com/regolith-linux/regolith-ubuntu-iso-builder/releases/download/release-release-focal-focal_standard-1.6.0/Regolith_1.6.0_focal.iso) <i class="fas fa-cloud-download-alt"></i> (A [separate ISO is provided for Focal on systems using BIOS boot](https://github.com/regolith-linux/regolith-ubuntu-iso-builder/releases/download/release-release-focal-focal_legacy_boot-1.6.0/Regolith_1.6.0_focal.iso)) and then use an OS installation tool such as USB Creator to write the downloaded file onto a USB device. Here are Ubuntu guides for performing this action in [Windows](https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-windows#0), [Mac](https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-macos#0), and [Ubuntu](https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-ubuntu#0).
2. Reboot the computer and select the USB flash drive to boot from.
3. Install or run the live environment by providing information when prompted during the setup process. See [this tutorial](https://tutorials.ubuntu.com/tutorial/tutorial-install-ubuntu-desktop) to learn more about the installation process.
4. When prompted, reboot the computer and login to your new Regolith environment!

## Option 2: Regolith Desktop via Repository (PPA) {#ppa-install}

1. Add the Regolith release PPA to your system: (See below about [PPA sources](#ppa-sources) for other package archives.)

```console
$ sudo add-apt-repository ppa:regolith-linux/release
```

2. Install the Regolith desktop package ([see below for other desktop packages](#desktop-packages) available):

```console
$ sudo apt install regolith-desktop-standard # or regolith-desktop-mobile for laptops
```

3. Reboot the computer, and when logging in select the "Regolith" session from the gear menu (⚙️):

{{< img "images/regolith-screenshot-login.png" "The Ubuntu login screen">}}

From this point, please proceed to the next section, [configuration]({{< relref "configuration" >}}) to learn about the most common changes people like to make to Regolith.

### Troubleshooting

#### Status indicators missing after Upgrade

Regolith 1.4 changes the way in which blocks are installed and configured. This change is necessary to cleanly support the `arm64` architecture and make it simple to swap out components like the notification subsystem. From 1.4 onward, blocks are installed by the package manager. See [this Howto]({{< ref "/docs/howtos/add-remove-blocklets">}}) on adding and configuring blocks.

## Reinstallation

In the case that the Regolith desktop environment becomes corrupted or otherwise unbootable, follow these steps to reset it. No user files will be removed as part of this process:

1. Login to the stock Ubuntu session. If this session is not available, install it with `sudo apt install ubuntu-session`. If you are unable to login, type {{< keys "ctrl,alt,F2" >}} to access a TTY console. After installing the `ubuntu-session` package you will have the option to select the "Ubuntu" session type in the login screen.
2. Uninstall Regolith from within the Ubuntu session:

```console
$ sudo apt purge regolith-*
$ sudo apt autoremove -y
$ rm -Rf ~/.config/regolith/flags
```

3. Verify that no regolith packages are still installed with `apt list --installed | grep -i regolith`. The command should not return any packages. If it does, manually uninstall them with `sudo apt purge <package>`.
4. Reinstall Regolith:

```console
$ sudo apt install regolith-desktop i3xrocks-net-traffic i3xrocks-cpu-usage i3xrocks-time #also consider i3xrocks-battery i3xrocks-memory i3xrocks-weather
```

5. Reboot the computer and when logging in select the "Regolith" session in the gear menu. At this point you can remove `ubuntu-session` if you don't want the stock GNOME session (optional).

## Uninstallation of `regolith-desktop`

Simply follow these steps to remove Regolith Desktop installed via PPA from your system:

1. Log out of the Regolith session and into the default Ubuntu session.
2. Open a terminal and run:

```console
$ sudo apt purge regolith-desktop && sudo apt autoremove
```

3. Now remove the PPA:

```console
$ sudo add-apt-repository --remove ppa:regolith-linux/release
```

4. You can now safely delete the directory `~/.config/regolith`.

## PPA Sources {#ppa-sources}

There are 4 sources for Regolith packages. The `release` PPA is recommended for most users, but another may be better for you based on your needs. Here is a description of each PPA.

| Name     | PPA URI                             | Freshness                         | Stability                                           | Description                                                                                                                                                                |
| -------- | ----------------------------------- | --------------------------------- | --------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Unstable | `ppa:regolith-linux/unstable`       | {{< badge >}}High{{< /badge >}}   | {{< badge class="secondary">}}Low{{< /badge >}}     | The `unstable` PPA is recommended for project developers and anyone that's alright with troubleshooting their own system and doesn't mind some problems from time to time. |
| Stable   | `ppa:regolith-linux/stable`         | {{< badge >}}Medium{{< /badge >}} | {{< badge class="secondary" >}}Medium{{< /badge >}} | The `stable` PPA is for those that would like the latest features, even between official releases.                                                                         |
| Release  | `ppa:regolith-linux/release`        | {{< badge >}}Low{{< /badge >}}    | {{< badge class="secondary" >}}High{{< /badge >}}   | The `release` PPA provides bug fixes as they occur and feature updates upon release.                                                                                       |
| r1.3     | `ppa:regolith-linux/r1.3`           |                                   |                                                     | The `r1.3` PPA is locked to the 1.3 release and will not be updated.                                                                                                       |
| r1.4.1   | `ppa:regolith-linux/regolith-1.4.1` |                                   |                                                     | The `r1.4.1` PPA is locked to the 1.4.1 release and will not be updated.                                                                                                   |

## Desktop Packages

Starting with Regolith 1.5, there are a few different desktop packages that users can choose from to get specific package selections for their system and use case.

| Package                     | Description                                                          |
| --------------------------- | -------------------------------------------------------------------- |
| `regolith-desktop`          | Legacy package, no status indicators. Not recommended for new users. |
| `regolith-desktop-standard` | A reasonable set of default packages for desktop users.              |
| `regolith-desktop-minimal`  | The bare minimum package set for power users. Not recommended.       |
| `regolith-desktop-mobile`   | Some additional packages on top of standard for laptop users.        |
| `regolith-desktop-complete` | Includes all of the official looks and status indicators available.  |

## ARM support

Regolith packages are built for `i386`, `amd64`, `arm64`, and `armhf` architectures. A stand-alone installer is not available for ARM-based systems such as the Rasberry Pi, however Regolith can be installed via PPA into any existing Ubuntu system running on the supported architectures. [See above](#ppa-install) about installing Regolith via PPA.
