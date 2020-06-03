---
title: "Update packages selectively"
weight: 15
description: >
  Install or upgrade packages selectively from the unstable PPA.
---

This page describes how to configure the package system to manage which PPA package upgrades come from.

You can enable the Regolith unstable PPA by adding it to your apt sources:

```# add-apt-repository ppa:regolith-linux/unstable```

It is recommended that you enable selective upgrades from the unstable PPA. This can be done by configuring your apt preferences to only allow selective installs from this PPA:

```bash
cat <<EOF >/etc/apt/preferences.d/regolith-unstable-updates
# Configure apt to allow selective installs of packages from regolith unstable
Package: *
Pin: release o=LP-PPA-regolith-linux-unstable
Pin-Priority: 400
EOF
```

Apt will now use these preferences and not update packages from the unstable PPA unless explicitly done. This can be tested with:

```# apt upgrade -s```

Now, by default, installing a package will come from the primary PPA configured on the machine. As seen by apt-cache policy, there is a version of this package available in unstable as well as the release PPA's:

```bash
$ apt-cache policy i3xrocks-weather
i3xrocks-weather:
  Installed: (none)
  Candidate: 3.0.21-1
  Version table:
     3.0.29-1 400
        400 http://ppa.launchpad.net/regolith-linux/unstable/ubuntu focal/main amd64 Packages
     3.0.21-1 500
        500 http://ppa.launchpad.net/regolith-linux/release/ubuntu focal/main amd64 Packages
        500 http://ppa.launchpad.net/regolith-linux/stable/ubuntu focal/main amd64 Packages
```

However, installing the package will pull from the release PPA when it isn't explicitly installed from unstable:
```bash
$ apt install i3xrocks-weather 
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following NEW packages will be installed:
  i3xrocks-weather
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
Need to get 6,360 B of archives.
After this operation, 23.6 kB of additional disk space will be used.
Get:1 http://ppa.launchpad.net/regolith-linux/release/ubuntu focal/main amd64 i3xrocks-weather amd64 3.0.21-1 [6,360 B]
Fetched 6,360 B in 0s (14.0 kB/s)     
Selecting previously unselected package i3xrocks-weather.
(Reading database ... 302563 files and directories currently installed.)
Preparing to unpack .../i3xrocks-weather_3.0.21-1_amd64.deb ...
Unpacking i3xrocks-weather (3.0.21-1) ...
Setting up i3xrocks-weather (3.0.21-1) ...
```

To install the version from the unstable PPA you will need to define it like:

```bash
$ apt install -t focal i3xrocks-weather 
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following NEW packages will be installed:
  i3xrocks-weather
0 upgraded, 1 newly installed, 0 to remove and 42 not upgraded.
Need to get 6,920 B of archives.
After this operation, 22.5 kB of additional disk space will be used.
Get:1 http://ppa.launchpad.net/regolith-linux/unstable/ubuntu focal/main amd64 i3xrocks-weather amd64 3.0.29-1 [6,920 B]
Fetched 6,920 B in 1s (10.1 kB/s)           
Selecting previously unselected package i3xrocks-weather.
(Reading database ... 302563 files and directories currently installed.)
Preparing to unpack .../i3xrocks-weather_3.0.29-1_amd64.deb ...
Unpacking i3xrocks-weather (3.0.29-1) ...
Setting up i3xrocks-weather (3.0.29-1) ...
```