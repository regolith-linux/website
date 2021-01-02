---
title: "1.5.1 Release Notes"
linkTitle: "1.5.1 Release Notes"
weight: 1
description: >
  Release notes for Regolith 1.5.1.
---

Regolith 1.5.1 is a bug fix release.  The following list contains brief descriptions of fixes and updates per package since the Regolith 1.5 release:

#### Release Notes for i3-next-workspace

  * Initial copy from regolith-i3xrocks-config.

#### Release Notes for regolith-compositor-picom-glx

  * Add xrender-sync-fence for better support of nvidia systems.


#### Release Notes for regolith-default-settings

  * Add breaks declaration to deal w/ ISO upgrade issue

#### Release Notes for regolith-desktop

  * ship version file with all desktop variants
  * Update version to 1.5.1
  * Add new recommends for rofication status indicator that has been seperated from regolith-rofication
  * Fix virtual package specification.  Use look w/ less dependencies for minimal meta-package.

#### Release Notes for regolith-ftue

  * Add some Xresources options for GNOME Terminal

#### Release Notes for regolith-i3-gaps-config

  * Fix build files
  * Fix path to i3-next-workspace
  * Move some non-critical dependencies to Recommends.  Add recommends to i3-next-workspace.  Remove dep on fontawesome.
  * deprecating startnum
  * fix
  * adding a missing logic
  * Fix 'Carry Window to Next Free' binding, remove trailing whitespace. (#31)

#### Release Notes for regolith-i3xrocks-config

  * Add padding for net-traffic, extensive mocked tests (#101)
  * Migrate rofication status indicator i3xrocks conf file here from regolith-rofication.
  * Remove button handling code as net-traffic cannot use them w/ repeat interval type. (#100)
  * Update net-traffic script to use 'repeat' interval type.
  * Rewrite weather blocklet (#96)
  * Remove todo scripts as migrated to regolith-todo package
  * Fix disk-capacity button clicks, add tests (#98)
  * Change memory rock default full text (#94)
  * Fix name of next-workspace script from last change
  * Remove next-workspace script as it's moved to it's own package: i3-next-workspace.
  * format the connected device string using pango same as other rocks (#89)
  * Changed around a few release names
  * Use git-buildpackage to build the deb instead of debuild, use auth for all containers
  * reading from xresources now (#82)
  * Don't sign packages for now, so the pipeline actually builds
  * Only run packaging on tag releases for now
  * Added tests for temp script and reworked temp script routine
  * Also run the tests on PRs
  * Match example with what the script is looking for (#90)
  * Rewrote net-traffic script, fixes #91 (#92)
  * Add extra location information to weather API request (#88)
  * set BUTTON variable (#93)
  * Added net-traffic tests and GitHub Actions workflow to run tests
  * Switch to a separate container running to ensure we can run our tests
  * Make sure we can actually run the job somewhere
  * Fixed xrescat mock and test execution
  * Fix for button handling of the net-traffic script (#86)
  * Make time interval configurable with Xresource (#87)
  * Restore original behavior of mouse actions on volume (#85)

#### Release Notes for regolith-rofication

  * Another approach to breaking status indicator from base functionality due to python build script mysteries: move the i3xrocks conf.d file to i3xrocks.  Leave python scripts here for the python installer thing.
  * Break status indicator for rofication into separate package: i3xrocks-rofication.

#### Release Notes for regolith-styles

  * Check if gnome-terminal is installed before generating profile.  Related to https://github.com/regolith-linux/regolith-desktop/issues/522.

#### Release Notes for regolith-todo

  * Add i3xrocks dependency in hopes of sidestepping package file conflicts during upgrades
  * Rewrote syntax of todo script, added tests
  * Add td-cli as dependency
  * Package created from regolith-i3xrocks-config
