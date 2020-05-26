---
title: "Advanced"
linkTitle: "Advanced"
weight: 4
description: >
  Advanced topics for the Regolith interface.
---

## i3bar

The bar's visibility can be toggled with <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">i</span></span>.  This can be useful when wanting to remove all distractions and devote 100% of the screen to one or more applications in your workspace.  Another way of giving one application complete use of the screen is to press <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">f</span></span> to cause the active application to enter full screen mode.

## i3-wm Layout Mode

i3-wm offers a few different layout modes.  <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">t</span></span> can be used to toggle between tabbed, horizontal and vertical split modes.

## Save and Restore Window Positions

[A tool](https://github.com/regolith-linux/i3-snapshot) to save and load window layouts, <code>i3-snapshot</code> is integrated into Regolith 1.3.  Pressing <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">,</span></span> will write the current window layout to a file in the <code>/tmp</code> directory. <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">,</span></span> will restore that layout.  <code>i3-snapshot</code> is intended for use-cases in which monitor changes may cause layouts to be randomized.  It is not a replacement for <code>[i3-save-tree](https://i3wm.org/docs/layout-saving.html)</code> as it uses window identifiers that do not survive across X sessions, nor does it offer a way of positioning application launches into specific layouts.
