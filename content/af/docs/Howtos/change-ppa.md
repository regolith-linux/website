---
title: "Switch between Regolith PPAs"
description: >
  Changing Regolith PPA allows to get a different set of package versions
---

This page describes how to configure the package system to consume Regolith packages between a set of PPAs.

## Regolith PPAs

See this section for [a description of each PPA]({{< ref "/docs/Getting Started/install#ppa-sources" >}}). By default users will be on the `release` PPA which is intended to only be updated upon bug fixes and versioned releases. Here is how to switch to the `unstable` PPA, by updating the apt packaging configuration:

1. Remove the existing `release` PPA:

```console
$ sudo add-apt-repository --remove ppa:regolith-linux/release
```

2. Add the new `unstable` PPA:

```console
$ sudo add-apt-repository ppa:regolith-linux/unstable
$ sudo apt update
```

3. Upgrade packages to the upgraded versions contained in the new PPA:

```console
$ sudo apt upgrade
```

### Switch Back

To return to the previon configuration, simply follow the steps above but toggle the PPA URIs. So, swap `unstable` for `release`.

Once the PPAs have been switched, to revert any unwanted package updates from the `unstable` repository, simply install the specific version you wish to revert to. For example, if `regolith-deskop` has version 4 in `unstable` and version 3 in `release`, you would have been upgraded to version 4 after using the `unstable` PPA and taking updates. To revert back to version 3 after swapping back to the `release` PPA, tell `apt` the specific version you wish to install:

```console
$ sudo apt install regolith-desktop=3
```

The general form is `apt install <package name>=<package version>`. You will be notified by `apt` that the operation will result in a downgrade package version.
