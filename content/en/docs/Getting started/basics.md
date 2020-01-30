---
title: "Basics"
linkTitle: "Basics"
weight: 2
description: >
  Learn the most important parts of Regolith first.
---

While we'll cover everything in greater detail in other areas of the documentation, this page covers the very basic users need to know in order to use Regolith.

## The Super Key

Most keybindings you'll be using with Regolith start with the <span class="badge badge-warning">super</span> key.  This key typically says "WIN" or has a MS Windows logo on it.  On a Mac it is the Command <span class="badge badge-warning">⌘</span> key.  Going forward, this key will simply be referred to as <span class="badge badge-warning">super</span> but keep in mind that you can change which physical button <span class="badge badge-warning">super</span> maps to in your configuration if you choose to.

## Launch an Application

After logging in, you'll be at a blank screen with the bar at the bottom and some keyboard shortcuts on the right.  To launch an application, press <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">space</span></span> and a menu will be presented with all of the applications installed on the system.  If you begin typing the name of the application you wish to launch, the list will filter down to only matching names.  You can also scroll through the list with the arrow keys.

### Terminal

The terminal is a special application that has it's own keybinding, <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">enter</span></span>.

### Browser

The preferred browser is also special, and can be launched with <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">shift</span> <span class="badge badge-warning">enter</span></span>.

## Quit an Application.

<span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">shift</span> <span class="badge badge-warning">q</span></span> will send the `kill` signal to the focused application.  Additionally, depending on the app, one of the following keybindings may cause it to exit:

* <span class="text-nowrap"><span class="badge badge-warning">ctrl</span> <span class="badge badge-warning">w</span></span>
* <span class="text-nowrap"><span class="badge badge-warning">ctrl</span> <span class="badge badge-warning">W</span></span>
* <span class="text-nowrap"><span class="badge badge-warning">ctrl</span> <span class="badge badge-warning">q</span></span>
* <span class="text-nowrap"><span class="badge badge-warning">ctrl</span> <span class="badge badge-warning">Q</span></span>
* <span class="text-nowrap"><span class="badge badge-warning">ctrl</span> <span class="badge badge-warning">d</span></span>
* <span class="text-nowrap"><span class="badge badge-warning">alt</span> <span class="badge badge-warning">F4</span></span>

## Switching Workspaces

A primary way of managing how applications occupy the screen is by the usage of workspaces.  A workspace is in essence a group of zero or more applications that all present windows on the same physical display.  Users can switch workspaces to "gain" more space for applications to occupy.  Windows can be moved across workspaces.  Workspaces can be tied to physical display or be moved to other displays as needed.  To switch workspaces, hold down the <span class="badge badge-warning">super</span> key and press one of the number keys.  This will navigate to that workspace.  If any windows exist in a given workspace, it will show in the bar as being active. Thus, by referring to the bar the user can known of which workspaces active applications live.

## Further Reading

More keybindings are listed in <code>Remontoire</code>, the shortcut application.  This app is loaded automatically on the first session, but not on successive logins.  The window can be toggled at any time by clicking the circled <span class="badge badge-warning">i</span> icon in the bar, or pressing <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">shift</span> <span class="badge badge-warning">?</span></span>.