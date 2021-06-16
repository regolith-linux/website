---
title: "Pierwsze kroki"
linkTitle: "Wprowadzenie"
weight: 2
description: >
  Streszczenie metod instalacji Regolit.
---

Ta sekcja zawiera informacje niezbędne do uruchomienia Regolit na komputerze. There are two primary ways of installing Regolith; via an Ubuntu-based installer and via a Personal Package Archive (PPA). Either of these methods will result in essentially the same user experience, although installing via the Ubuntu installer will result in a package selection that is different from installing vanilla Ubuntu. However by adding and removing specific packages a vanilla Ubuntu system can be configured.

## Prerequisites

### Instalator Ubuntu

- A [modern computer](https://help.ubuntu.com/community/Installation/SystemRequirements) that can boot from a USB flash drive.
- Free space on a local drive. The installer will allow for managing existing partitions or installing on an empty volume.
- An internet connection to install updates during and after installation.
- A monitor with at least VGA (1024 x 768) resolution. Regolith is optimized for FHD (1920 x 1080) screens.
- An empty USB flash drive with at least 4 Gb of storage space.

### PPA

- An existing Ubuntu installation with admin rights. Supported versions are {{< blocks/supported_versions >}}.
- 100MB of free storage space to install the Regolith desktop environment (depending on package selections).
- An internet connection to install updates during and after installation.

## Deciding on Installation Method

If you already have an Ubuntu system of a supported version, than adding Regolith via PPA is the faster and less disruptive method. The Ubuntu installer method is better for starting from scratch, installing into a virtual machine, or just ensuring that any existing software is not conflicting with Regolith. Some users have had issues with getting Regolith to work properly with other Ubuntu derivative desktop environments they've installed on their system. Installing a fresh instance can sidestep these potential issues.
