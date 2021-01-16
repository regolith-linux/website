---
title: "1.4.1 Release Notes"
linkTitle: "1.4.1 Release Notes"
weight: 120
description: >
  Release notes for Regolith 1.4.1.
---

Regolith R1.4.1 is a fast follow up to 1.4 that fixes a few serious bugs, detailed on the mailing list [here](https://www.freelists.org/post/regolith-linux/Package-Updates-to-Release).  In addition to the package updates, a new boot animation is provided by the package `plymouth-theme-regolith` that is installed by default on the ISO.  The ISO also now excludes a deprecated touchpad driver that was conflicting with Settings.  Existing PPA-based installations can simply get the updates via their typical package update process.  Regolith Linux ISO users can update to R1.4.1 by applying regular package updates and then follow [this guide](../../../howto/update-14-141) to perform some manual steps if they have touchpad issues or use encrypted root file systems.