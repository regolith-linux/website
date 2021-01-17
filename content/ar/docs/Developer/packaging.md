---
title: "Packaging"
linkTitle: "Packaging"
weight: 3
description: >
  How code changes make it to users
---

Regolith is distributed as a set of interrelated Debian packages. As of Regolith 1.5, there are packages for 3 releases of Ubuntu: {{< blocks/supported_versions type="names" >}}. This page describes how code changes can be packaged such that users will get the updated code.

## Overview

Debian is the packaging format and system used by Regolith. Just like Debian, Ubuntu, and other Debian-based systems, the tools and workflow used to develop and update Regolith packages works in the same manner as those system. The general process:

1. Produce some code change against an existing package. In Regolith, generally there is a repo for each package, but in some cases one repo may host several source or binary packages.
2. Update the Debian metadata related to the change. This may just be a `changelog` entry, or could be more complex such as a new binary package, additional runtime dependencies, or updates to the build files which generate the executable code.
3. Do local testing and then push updates to GitHub.
4. Use a build script to generate the source package files.
5. Upload the source package to launchpad.net, so it can be built and hosted on the Regolith `unstable` (or `experimental` depending on the level of change) PPA
6. Test the package once it's been uploaded on a Regolith system.
7. Once testing is complete, the package is promoted to `stable` and then eventually `release`.

### Basic Packages vs `gbp` Packages

Until recently, packaging was done manually in that no scripts were used. Recently, we've been moving to using the `gbp` tool which provides some nice productivity enhancements when packaging with git repositories. Branch names may differ based on if the package in question has been migrated yet.

### Branch Conventions

- If a package contains the package source and the debian metadata, then `master` represents the development branch. The Ubuntu version associated with a changelog entry is always the oldest supported, currently `bionic`. This is to comply with launchpad.net's package copy policy.
- If a package varies from one Ubuntu release to another, then branches are created for each required version, except for the most recent, which is `master`. Example branches:

```
bionic
eoan
master
```

- If a package requires some github integration such that the package cannot be cleanly built on `master`, then a branch `debian` is used specifically for the package.

### Prerequisites

1. In order to build packages locally, the debian build tools will need to installed. It is necessary to understand these tools, and how they work together to produce and verify a package. Read [the guides here](https://packaging.ubuntu.com/html/) and install the software they specify.
2. To push to a Regolith PPA, you will need to become an official contributor and have your keys added to the launchpad account to enable you to push updates. This is not necessary however to push to your own PPA. [Check here to learn how to create your own PPA](https://askubuntu.com/questions/71510/how-do-i-create-a-ppa).

## Examples

### Add comment to i3 config

#### 1. Checkout the `regolith-i3-gaps` package:

```console
$ git clone https://github.com/regolith-linux/regolith-i3-gaps-config.git
$ cd regolith-i3-gaps-config
```

#### 2. Make a change:

```console
$ echo "# Here is my comment at the end" >> config
```

#### 3. Update the changelog to bump the version and describe your change:

```console
$ dch
```

This will load an editor and create a new changelog entry. Here is what I added, yours will differ based on identity and configuration:

```
regolith-i3-gaps-config (2.4.15-1) bionic; urgency=medium

  * Added comment to i3 config file.

 -- Regolith Linux <regolith.linux@gmail.com>  Sat, 30 May 2020 20:10:27 -0700

```

#### 4. Commit and push the change to the git repository:

```console
$ git commit -am "Added comment to i3 config file."
$ git push origin
```

#### 5. A [shell script](https://github.com/regolith-linux/regolith-builder/blob/master/build.sh) is used to build the source package for uploading to launchpad.net:

```console
$ cd ..
$ git clone https://github.com/regolith-linux/regolith-builder.git
$ cd regolith-builder
$ ./build.sh package-model-R1.4.2.json ppa:regolith-linux/ubuntu/unstable /tmp regolith-i3-gaps-config
```

After this script completes, the source package will be uploaded to launchpad.net for inclusion into the `unstable` PPA.

#### 6. Verification

Go to the [launchpad.net PPA page](https://launchpad.net/~regolith-linux/+archive/ubuntu/unstable) to see the current status of the upload. It typically takes 10 - 30 minutes for a package update to complete.

#### Summary

Once packaging building completes successfully, the binary packages will be available for users to download during any automatic or manual update process.
