---
title: "Overview"
linkTitle: "Overview"
weight: 1
description: >
  What is Regolith?
---

Regolith is a collection of open source components that together form a desktop environment. Almost all of the UI components that are used to build Regolith are independent open source projects that have simply been configured for a specific workflow and visual aesthetic. Most computer desktop environments are optimized for ease-of-use and familiarity with commercial operating systems such as Microsoft Windows or Apple's OS X. In contrast, Regolith provides a way of interacting with a computer that is **optimized for user productivity**.

## The Keyboard, the Mouse, and the Monitor

Regolith places emphasis on the keyboard input device over the mouse, in relation to most other desktop environments.  This is for one reason: productivity.  But this benefit comes with a one-time cost: learning the keybindings.  In exchange for this up-front cost, the user is subsequently able to perform general computer actions faster and with less foreground thought.  Additionally, by pushing more of the computer actions into the user's memory, more of the computer's visual interface can be devoted to the user's applications.  Put another way, the Regolith interface devotes more bandwidth to the user's application and less to the general management of the computer.  And because ultimately the productive output of the user is a result of interaction with *applications*, the general productivity of the user is enhanced. This is a subjective benefit, and may be more or less important to the user. 

## Tiling Windows

Perhaps the most user-impacting component in Regolith is the window manager, an open source project called <code>i3-gaps</code> (which is a customization of <code>i3-wm</code>).  This program organizes windows into tiles.  By default, i3-gaps strives to fill the entire screen with tiles.  If only one program is presenting a window, then that window occupies the entire screen.  For two windows, both get an equal portion of the screen, and so on.  By using keybindings, the user can tell i3-gaps to resize, move, and otherwise organize windows in other ways. A key advantage to this approach is that the user is freed from micro managing window layouts (at the cost of having to learn the keybindings).

## Launching Applications

It is common for desktop environments to display application launchers throughout the user interface, in the form of icons and text.  Folders, docks, and context menus are used to present a form of menu to the user.  Despite them appearing visually different, they are have one function: to launch an application.  As with keybindings, in Regolith this user interface of launching apps is refined and minimized.  Desktop icons, panels, and docks are not used.  Rather, the user invokes the application launcher which presents a menu of applications sorted by frequency of usage.  The user may begin typing the name or function of the application they intend to load and the list is filtered accordingly.  In addition, frequently used applications such as terminal and browser have specific keybindings.  With this UI treatment, there is no fixed overhead on the display for the presentation of application launchers.  This provides the user benefit of more screen space devoted to the user's applications.

## System Management

Modern computers are complex machines with many observable attributes. For the day-to-day operation however, most of these can be ignored.  Each user has a specific subset of system state they care about, and so there is no one perfect configuration for every user.  By default Regolith provides on-screen state information on the bar for the user's workspaces, keybindings help, network and CPU utilization, notifications, and the system time.  More or less items can be configured by the user as needed. 

In addition to the transient system information provided on the bar, the system configuration can be changed by the user via the <code>Settings</code> application.  This configuration system is part of GNOME, and provides a rich set of UI pages to configure WiFi networks, Bluetooth devices, displays, and other devices.

## Where should I go next?

* [Getting Started](../getting-started/): Get started with Regolith
* [The Interface](../interface/): Understand how to perform actions in Regolith
* [Keybindings](../reference/keybindings/): Learn the keybindings
