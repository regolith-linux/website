---
title: "Regolith 1.3 Release Notes"
linkTitle: "Regolith 1.3 Release Notes"
weight: 1
description: >
  Release notes for Regolith 1.3.
---

Following R1.2, the 1.3 release focused on usability issues reported by users and a continuing refinement of the desktop environment in general, with a focus on making the system easier for those inexperienced with tiling window managers.

## Features

<table class="table">
    <tbody>
        <tr>
            <td>Cahuella GTK Theme</td>
            <td><img src="../regolith-screenshot-widgets.png"></img></td>
            <td>A new GTK theme was created for Regolith that more closely follows the standard GNOME theme, Adwaita.</td>
        </tr>
        <tr>
            <td>Keybindings Dialog</td>
            <td><img src="../regolith-screenshot-remontoire.png"></img></td>
            <td>To allow for a more consistent look and collapsible content for various monitor dimensions, a custom shortcut dialog was developed called Remontoire.</td>
        </tr>
        <tr>
            <td>Pluggable Compositors</td>
            <td></td>
            <td>The subsystem providing visual effects, the compositor, can behave differently based on hardware and driver support. Regolith now packages 3 compositor backends: compton-glx (based on Picom), xcompmgr, and none.</td>
        </tr>
        <tr>
            <td>i3-snapshot</td>
            <td></td>
            <td>In office environments it is common to switch between various display configurations (desk, meeting room...).  <code>i3-snapshot</code> allows the user to quickly save and restore existing window layouts in a session.</td>
        </tr>
        <tr>
            <td>New Rofi theme</td>
            <td><img src="../regolith-screenshot-rofi.png"></img></td>
            <td>Based on <a href="https://www.reddit.com/r/unixporn/comments/ehdj6b/i3gaps_nordic_beauty/">work by /u/InfernusZ9</a>, the Rofi launcher is less distracting.</td>
        </tr>
        <tr>
            <td>New notification UI based on <a href="https://github.com/DaveDavenport/Rofication">Rofication<a/></td>
            <td></td>
            <td>The previous notification UI was a hold over from more traditional desktop environments that prefer to present an on-screen dialog when a notification is received. Because user-focus is paramount, this was changed such that an indicator in the bar displays the number of unread notifications and the user decides when to view them via a keybinding or button click.</td>
        </tr>
        <tr>
            <td>Floating Control Panel</td>
            <td></td>
            <td>The <code>gnome-control-center</code> app can have a hard time adapting to constrained tiled layouts common with <code>i3-wm</code>. Now when the control panel is loaded, it floats above the existing windows to allow for a quick settings change without impacting other apps.</td>
        </tr>
        <tr>
            <td>Clickable Bar Status Actions</td>
            <td></td>
            <td>For convienence, the default blocks on the bar will launch configuration apps for the associated block.  For example, the battery block will launch the power settings control panel, and the notification block will launch the notification viewer.</td>
        </tr>
        <tr>
            <td>Discrete and packagable Looks</td>
            <td></td>
            <td>The underlying style framework used by Regolith has been revamped to allow for "looks": colors, themes, typeface, and other thematic state.  Looks can be switched with a single command.</td>
        </tr>
        <tr>
            <td>New bar status components</td>
            <td></td>
            <td>Network, keybindings, notifications, focused window, and other blocklets have been improved and added.</td>
        </tr>
        <tr>
            <td>Build System</td>
            <td></td>
            <td>Build scripts were added and improved to allow for the generation of Regolith packages in an automated fashion, making it easier for others to roll their own.</td>
        </tr>
        <tr>
            <td>Website</td>
            <td></td>
            <td>An entirely new website is launching with R1.3, to integrate more content and make it faster for users to find information.</td>
        </tr>
    </tbody>
</table>

## Fixes

* i3-gaps-wm: Fix for workspace label bug on startup. Revamping some keybindings based on user feedback.
* i3xrocks: numerous tweaks and fixes for status indicators.
* regolith-gnome-flashback: numerous fixes and policy enhancements to session management.

## ISO Generation

The following commands were applied to the Regolith Install ISO in the [Cubic tool](https://launchpad.net/cubic):
```bash
$ sudo add-apt-repository universe && sudo add-apt-repository ppa:regolith-linux/release
$ sudo apt remove aisleriot branding-ubuntu cheese* gnome-mahjongg gnome-sudoku gnome-mines gnome-todo* gnome-video-* libchees* libgnome-games* libreoffice* remmina* rhythmbox* shotwell* thunderbird* totem* ure ubuntu-session ubuntu-web-launchers
$ apt install regolith-desktop regolith-gdm3-theme
$ sudo apt autoremove
$ cp /usr/share/backgrounds/lucas-bellator-C0OD8OM-oM0-unsplash.jpg /usr/share/backgrounds/warty-final-ubuntu.png
```

The purpose of removing several packages such as games and libreoffice was to reduce the ISO size.  All packages removed in the ISO are installable via the `apt` tool or via the Ubuntu app store.