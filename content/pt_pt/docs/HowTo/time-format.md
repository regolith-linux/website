---
title: "Change the Bar Date and Time Format"
weight: 4
description: >
  Change the date/time format used in the bar.
---

The time format (12 or 24 hour) can be specified in Settings:
<img class="shadow m-5" src="../regolith-screenshot-settings-time-format.png" width="640px"/>

The date format can be specified by selecting the appropriate region in Settings.  A preview of the date format is provided, and logging back in is required for changes to take effect.
<img class="shadow m-5" src="../regolith-screenshot-settings-region.png" width="640px"/>

The date and time formats can also be explicitly set via Xresources.  To do so, override the `i3xrocks.date.format2` Xresource key.  See [Xresource overrides](../override-xres) for details. The format specification for date is simply the arguments that would be passed to the `date` command on the commandline.  For example, to print the year in 4 digits, specify `+%Y`.
