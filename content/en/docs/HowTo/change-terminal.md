---
title: "Change the default terminal"
weight: 3
description: >
  Change which terminal Regolith loads by default.
---

The default terminal that ships with Regolith, st-term, is a minimal terminal application.  There are others that offer more features.  To update Regolith to use your (already installed) terminal of choice, we just need to use `update-alternatives`.  In this example we'll use `gnome-terminal` but substitute your term command as needed.

1. Run `update-alternatives --config x-terminal-emulator` to see all available terminals installed on your system.
2. Select the terminal you prefer.
