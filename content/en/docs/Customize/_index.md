---
title: "Customize"
linkTitle: "Customize"
weight: 4
description: >
  Customize Regolith to suit you.
---

Regolith, as a set of components, lacks a uniform configuration file, format, or set of conventions.  However efforts have been made to create as much consistency as possible by utilizing a simple session-wide key-value configuration facility known as [Xresources](https://wiki.debian.org/Xresources).  Interface preferences such as colors and typeface are defined in Xresource files and then read by components such as st-term and i3-wm.  For the most part, Xresources can be used for higher level changes.  Lower level changes, for example swap out i3bar for polybar, or drun for Rofi, require more fundamental changes.

{{% pageinfo %}}
In addition to the content in this section, refer to the tutorials for step-by-step examples of how to customize Regolith.
{{% /pageinfo %}}

## Look

The highest level change in the way Regolith looks is called a "look".  This ties together color, typeface, GTK theme and icons into a packagable unit known as a <code>look</code>.  A few looks ship in the Regolith PPA, the default for R1.3 being called Cahuella.

## Styles

Regolith <code>looks</code> are a collection of style definitions that are bundled together as a cohesive whole.  But, what if you want to mix and match from different looks or make small tweaks to an existing look?  Well, the Xresource files that define the looks can be modified directly.  For example, to continue to use the Cahuella look but change the default font from Source Code Pro to, say Ubuntu Mono, one would just need to modify the typeface Xresource file to specify the new font (assuming it's already installed on the system).

## Compositors

A compositor is a desktop component that provides visual effects to windows. While not necessary for a desktop to function, they provide some hints to the user regarding the focused application, transitions, and other effects.  The performance and behavior of compositors can vary depending on graphics hardware and driver configurations.  Due to this, special attention was made such that they can be easily swapped based on the users needs.

## Components

A deeper level of customization is to change which components are loaded and used.  This is an advanced topic and requires both some courage to deal with the unexpected as well as general technical knowledge and some patience.  

## Packages

Regolith is ultimately a set of Debian packages that exist as collections of files on the user's computer. Packages can be created and hosted by anyone willing and able to create a launchpad account and some skills with packaging.  This section covers the details of Regolith's package structure and tips on creating your own.