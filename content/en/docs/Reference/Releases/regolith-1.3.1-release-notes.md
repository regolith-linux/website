---
title: "1.3.1 Release Notes"
linkTitle: "1.3.1 Release Notes"
weight: 1
description: >
  Release notes for Regolith 1.3.1.
---

R1.3.1 is a quick followup to R1.3 that adds polish and usability features.  Headlining features include a more concise way of overriding Xresource defaults and several enhancements to the Remontoire keybinding viewer.

## Features

<table class="table">
    <tbody>
        <tr>
            <td>Remontoire 1.1.1</td>
            <td><a href="../regolith-remontoire-screenshot.png"><img class="shadow" src="../regolith-remontoire-screenshot.png"/></a></td>
            <td>Provides a live view of active i3 keybindings, introduces a machine-readable comment format for i3 config files, and fixes several layout and presentation bugs reported by users.</td>
        </tr>
        <tr>
            <td>Ayu Looks</td>
            <td><a href="../regolith-screenshot-ayu-mirage.png"><img class="shadow" width="640px" src="../regolith-screenshot-ayu-mirage.png"></img></a></td>
            <td>The community contributed Ayu themes have been fully integrated into Regolith with updates to package dependencies and configurations.</td>
        </tr>
        <tr>
            <td>Rofi Polish</td>
            <td><a href="../regolith-screenshot-rofi-window.png"><img class="shadow" width="640px" src="../regolith-screenshot-rofi-window.png"></a></td>
            <td>Numerous updates to the Rofi themes for all provided looks.</td>
        </tr>
        <tr>
            <td>Easier Customization</td>
            <td></td>
            <td>Now, overriding specific Xresource values can be easily done by supplying only the overrides in <code>~/.config/regolith/Xresources</code> without needing to copying and update any existing files.  Additionally, any Xresource files in <code>~/.config/regolith/Xresources.d</code> can be referenced without absolute path, enabling easier multi-machine configurations.</td>
        </tr>
        <tr>
            <td>Utilize GNOME and <code>update-alternatives</code> for Default Apps</td>
            <td></td>
            <td>GNOME settings for default browser and <code>update-alternatives</code> for preferred terminal are now used by Regolith.  No custom configuration changes are required.</td>
        </tr>
        <tr>
            <td>Xresource Updates</td>
            <td></td>
            <td>More UI configuration pulled out of component configs and into Xresources provides more flexibility in how custom looks can be.</td>
        </tr>
        <tr>
            <td>Locale used for date/time Format</td>
            <td></td>
            <td>For those not using the US date and time formats, the bar clock will now automatically use the GNOME hour format and the <code>locale</code> <code>LC_TIME</code> setting to automatically display time in the preferred form without configuration.</td>
        </tr>
        <tr>
            <td>UI Tweaks and Polish</td>
            <td><a href="../nord-dark.png"><img class="shadow" width="640px" src="../nord-dark.png"></a></td>
            <td>Many small updates across all UI components to further polish the interface, including a new optional dark background adapted from work by <a href="https://www.reddit.com/r/unixporn/comments/ehdj6b/i3gaps_nordic_beauty/">/u/InfernusZ9</a>.</td>
        </tr>
    </tbody>
</table>

## Fixes

* Debian package dependencies for various Regolith Looks have been fixed.
* Layout issues with Remontoire have been addressed.
* Compton configuration cleaned up 

## ISO Generation

The following commands were applied via the [Cubic tool](https://launchpad.net/cubic) to the stock Ubuntu 18.04 and 19.10 installer images to generate the Regolith Install ISO:
```bash
$ sudo add-apt-repository universe && sudo add-apt-repository ppa:regolith-linux/release
$ sudo apt remove aisleriot branding-ubuntu cheese* gnome-mahjongg gnome-sudoku gnome-mines gnome-todo* gnome-video-* libchees* libgnome-games* libreoffice* remmina* rhythmbox* shotwell* thunderbird* totem* ure ubuntu-session ubuntu-web-launchers
$ apt install regolith-desktop regolith-gdm3-theme
$ sudo apt autoremove
$ cp /usr/share/backgrounds/lucas-bellator-C0OD8OM-oM0-unsplash.jpg /usr/share/backgrounds/warty-final-ubuntu.png
```

The purpose of removing several packages such as games and libreoffice was to reduce the ISO size.  All packages removed in the ISO are installable via the `apt` tool or via the Ubuntu app store.