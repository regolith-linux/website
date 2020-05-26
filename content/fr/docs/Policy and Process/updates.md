---
title: "Updates"
linkTitle: "Updates"
weight: 2
description: >
  Policy about how Regolith evolves over time.
---

## Configuration Files

Regolith Linux is continually being updated with bug fixes and feature enhancements.  Regolith's default configuration files live in `/etc/regolith/`.  To customize these files, [make copies in your user directory](/docs/howto/stage-configs/) and make changes there.  These copied files in the user directory are owned by the user and will not be modified by Regolith.

## Package Updates

Notification of upcoming updates including those that may introduce breaking changes will be announced on the [Regolith Linux Announcements mailing list](https://www.freelists.org/list/regolith-linux).  Whenever possible, breaking changes will be confined to major version releases of Regolith.  

Once a package has been published to the `release` PPA, Ubuntu's built-in package update facility will find the update and either directly apply it or ask the user if they wish to do so, depending on configuration.

## Package Promotion

Development of Regolith happens via updates to source code kept in git repos within the GitHub Regolith Organization.  When a given feature or fix is ready for testing, it is published to the `unstable` PPA.  After the change has been verified to work and not cause other problems, it is promoted to the `stable` PPA.  Changes being preceived as high-risk will spend some additional time in `stable`.  If a change is a feature, it will stay in `stable` until the next version release, but if the change is a bug fix, it will be promoted to the `release` and `r1.3` PPAs.