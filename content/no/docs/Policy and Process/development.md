---
title: "Development"
linkTitle: "Development"
weight: 6
description: >
  This page describes the maintenance and development of Regolith from a task perspective.  The objective of this document is to allow others the ability to maintain and develop Regolith
---

# Tasks

## Triage Bugs, Feature Requests

This task is essentially adding a first layer of organization from inputs from users.

- Notice of bugs and feature requests come as email/slack notifications when the bugs are created.
- Review each incoming GitHub issue within two days, determine if there is an easy fix. (best effort)
- For issues without an easy fix, add relevant tags, provide some suggestions, give some time for community members to respond with suggestions.
- For issues that result in a code change (feature/bug fix), make reference to GitHub URL for issue in commit so that GitHub will link to it from issue.
- Fix/Feature first goes to `unstable` (see steps below that describe this process). When the feature is ready, add note to original GitHub issue stating that feature/fix is ready for testing.
- If there is no response and/or no issues were reported after a few weeks, the change is eligible for promotion to `stable`.

## Take user-contributed PRs

We accept user contributions with the following steps:

- Get notified of PR from email
- Identify if code change results in general utility for most users, or is more of a personal concern. If the latter, inform the user politely as such and that the PR will not be merged. Also consider the complexity and volatility of the change. Does the change make maintaining Regolith more difficult (things like version specific changes, changes that require Ubuntu-only packages or behavior, changes that are difficult to test, features that rely on specific hw configurations, etc.)
- Assuming PR passes these tests, do a PR review. Iterate until the changes is ready for inclusion.
- Merge the change, publish package to `unstable` (see below), inform user in PR that package is available for testing.

## Publish Package Version to `unstable`

This task describes how code sitting on a computer makes it into a package that can be distributed to other users via the package manager facility.

1. Pull commits locally if from others, or whatever local commits if from me.
2. `gbp dch` to update changelog with git commits.
3. Edit `/debian/changelog` with correct version and Ubuntu Release (See Rule 1 below).
4. `gbp buildpackage` to locally test package build. Address all lintian errors and warnings. Some warnings cannot be fixed, or at least I don't yet understand how to fix them.
5. If during package build testing, changes are required, add them to existing commit (`git commit --amend`)
6. Once package build is ready, push package changes to GitHub
7. Go to local clone of `regolith-builder` repo, run `build.sh` script to generate source package and upload to launchpad (this step utilizes Launchpad PKI and as of 7/2/2020 only kgilmer has access to publish packages to Regolith PPAs). Example invocation: `./build.sh package-model-R1.4.2.json ppa:regolith-linux/ubuntu/unstable /tmp/bb56 regolith-compositor-compton-glx`
8. Once package is uploaded, monitor email for build error notifications. Iterate on package dev if errors.
9. Once package has built in `unstable`, sync package versions (see below)

## Synchronize Package Versions Across Ubuntu Releases

When a package is submitted to laundpad.net to be built into a PPA, the package is only built for the Ubuntu version (Bionic, Focal, etc.) that is listed in the package's changelog file. Here is an example changelog (`debian/changelog`) snippet:

```
regolith-system (1.4.0.4-1) focal; urgency=medium

  [ Ken Gilmer ]
  * Add gbp conf file, cleanup.

 -- Regolith Linux <regolith.linux@gmail.com>  Sat, 06 Jun 2020 12:39:39 -0700
...
```

Here you can see `focal` is listed after the package version. This means that when this package source was uploaded via `dput`, launchpad.net built it for the focal release. Users running other versions of Ubuntu will not see this as an update for their system. Because Regolith often supports 2 or 3 different releases, Launchpad needs to be instructed to build the packages for our other supported Ubuntu versions as well. For packages that differ based on Ubuntu version (such as `regolith-desktop`) typically there is a separate branch with a unique changelog entry for each Ubuntu target. However for almost all other packages, each is able to run as-is on all supported Ubuntu versions, so we do not need to maintain anything per version, but we do have to copy the package.

To do this we simply copy the package from the _source_ Ubuntu version to the _target_ Ubuntu version within the _same_ PPA. This task is error prone and tedious, because the time it takes for launchpad.net to build a package greatly varies depending on load and other factors. A package cannot be copied until it's completely finished building. Attempting to do so will result in an error. Additionally, packages can only be copied from older Ubuntu versions to newer versions. So, we must first build a package for the earliest supported version, and then copy it in order to each later version. All the while keeping the timing constraints in mind so we do not perform an operation on a package that hasn't completed building (copying is also considered building in launchpad.net).

It may be possible to write a program that can monitor the state of all packages within a PPA and attempt to copy packages to keep versions consistent, but this program has yet to be written. The current process is to run a script that performs the copies from older to newer versions and simply sleeps between operations hoping to get lucky with the package build times. This makes it slow and error prone.

- For the package recently published to a PPA, verify that the package has completed building, and that it is on the oldest possible version.
- From the `regolith-builder` repo, run the `sync-pkg-version.sh` script, and specify the package name. The following example will copy the package `regolith-compositor-compton-glx` from `bionic` to `eoan`, and then `focal` (note this will change in the future with Ubuntu versions) in the `unstable` PPA:

```bash
$ ./sync-pkg-version.sh unstable regolith-compositor-compton-glx
```

- It's configured to pause 20 minutes between copies, so will take some time to complete. When it's done, check the PPA page ([unstable](https://launchpad.net/~regolith-linux/+archive/ubuntu/unstable), [stable](https://launchpad.net/~regolith-linux/+archive/ubuntu/stable), [release](https://launchpad.net/~regolith-linux/+archive/ubuntu/release)) to determine if the copies were successful. If not, run the script again until all supported Ubuntu versions have the same version.

## Promote Packages from `unstable` to `stable`

Once a package has been tested in `unstable` by the developer of the change (and possibly others), it can be promoted to `stable` (and eventually `release`, but this requires planning and coordination). The `stable` PPA is intended to provide "beta" level quality of package updates for those that are willing to add some risk in exchange for earlier fixes and features. Most users are expected to use `release` and so the pool of users should be relatively small. This gives more time for testing and a smaller risk when issues are discovered.

Package promotion is essentially just copying packages, as we did in the task above to sync a package's versions across Ubuntu versions. The difference is that instead of copying between Ubuntu versions, we are first copying from source PPA to target PPA (same Ubuntu version), and then across Ubuntu versions within the target PPA.

There is a script in `regolith-builder` specific to this task. It essentially works as the package sync script, it's just implementing the copies as described above. Example that promotes `regolith-system` from `unstable` to `stable`:

```bash
$ ./promote-stage.sh unstable stable regolith-system
```

Note that this script has the same limitations and fragility of the sync versions script. Timing copy operations can fail and so it's necessary to verify each time that the promotion worked as expected. If the package was copied successfully to the target PPA but subsequent sync operations failed, then run the `sync-pkg-version.sh` script to clean up the package versions in the target PPA.

## Plan a Subsequent Regolith Release

Keeping it simple, we rely on the [GitHub project planning feature](https://github.com/orgs/regolith-linux/projects) available in the Regolith organization. Workflow:

- Create a new project to house and manage issues related to the release. Generally 3 columns seems to work well (not done, in process, complete).
- Go through the GitHub issues and determine which issues have or should be fixed in the project created in the above step. For those issues, specify the project in the drop-down to the right.
- As issues are created, continue to add them to the new project as-needed.
- Any features that are expected to be in the release, and do not already have issues, need to have issues created so they can be tracked in the project. Ideally, the project should define all changes that were made from the previous version.
- As bugs get fixed and features get implemented, use the project facility to synchronize the issue status with the project status.
- Once the scope is finalized for the release and all associated issues are in the "done" column, the project is complete.
- Use the project link to communicate with users and other contributors the status of the release or an issue associated with the release.
- Once a project is complete (has been shipped, no critical bugs), the project can be marked as complete.

## Test a Snapshot of Regolith for a Release

The `stable` PPA is a staging area for the next upcoming Regolith release. Packages should not be copied into the `release` PPA unless they are specifically critical bugs. Features and lesser important bugs should be held in `stable` until a release occurs.

### Testing via PPA

To test the packages in stable, simply add the PPA to your test environment and install Regolith as it would normally be installed (substituting the `stable` PPA).

### Testing an ISO

The `regolith-builder` repo contains the files `create-iso.txt` and `package-iso-*` text files that describe the steps necessary to generate a Regolith ISO from a PPA. Follow these steps with the Cubic ISO builder to generate an ISO. Boot a test environment with the ISO to perform testing.

## Perform a Regolith Release

Once testing a release in the `stable` PPA has been confirmed to be of acceptable quality, perform the following steps to execute the release:

1. Communicate the upcoming update on the `release-plan` Slack channel, linking to the project.
2. Sync all packages from the `stable` PPA to the `release` PPA.
3. Communicate that users will now be able to update. Provide release notes or link to project if none available.
4. Generate a new ISO w/ the Cubic tool (described above) and upload this to the `regolith-desktop` releases page. Use consistent entries for the various field when generating the release on GitHub.
5. Communicate the update is available on the mailing list and Twitter.
6. Monitor Slack and GitHub issues for any problems users may encounter.

## Add a New Package to Regolith

1. Create the GitHub repo in the Regolith org.
2. Use the debian package utilities to generate the package metadata that is stored in the `debian` directory.
3. Use the debian package utilities to verify that the package builds successfully locally.
4. Follow the steps in task **Publish Package Version to `unstable`** from step 7 such that the new package is installable by users.

## Update Package Model

The build scripts use a JSON file that defines a few things necessary in order to build source packages and upload them to launchpad.net. These files live in the `regolith-builder` repo with the schema `package-model-<regolith version>.json`. Here is an abbreviated snippet of `package-model-R1.4.1.txt`:

```json
{
    "packages": [
        {
            "gitRepoUrl": "https://github.com/regolith-linux/regolith-system.git",
            "packageName": "regolith-system",
            "buildPath": "regolith-system",
            "upstreamTarball": "",
            "packageBranch": "master"
        },
    ...
    ],
    "copies": [
        {
            "ppaUrl": "~kgilmer/ubuntu/speed-ricer",
            "packageName": "i3-snapshot",
            "sourceVersion": "bionic",
            "targetVersions": "eoan"
        },
    ]
}
```

The file contains two sections, "packages" and "copies". Packages defines how the `build.sh` script can go about generating a source package for a given package. It requires the git repo, the name of the package, the root directory in the repo from which the build should execute, any specific source tarball to use, and the git branch. The Copies section describes packages that are not built as part of Regolith but copied from other PPAs. For example many GTK theme and icon packages are already hosted by other developers on launchpad.net and for Regolith, we simply need to copy them.

Steps to add a new package model for a new Regolith version:

1. Copy from the latest release to the new one.
2. Make changes as needed to the new package model to support the new Regolith version.
3. When running the `build.sh` script to generate source packages, specify the new package model in the parameter list.

# Rules

### R1 - Ubuntu version in Changelog

Packages should be published with changelog entry of oldest supported Ubuntu release (`bionic` as of 7/2/2020).

### R2 - Git branch names for Ubuntu versions

For packages which must maintain Ubuntu-version-specific differences, a distinct version string must be generated for each version of Ubuntu. In this case, the package's git repo will maintain a branch named after the Ubuntu release it builds, with the exception of the branch `debian` always tracking the current production release of Ubuntu.
