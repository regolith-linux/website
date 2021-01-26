---
title: "Styles"
linkTitle: "Styles"
weight: 2
description: >
  Details about Regolith styles
---

As stated in the [repository's README](https://github.com/regolith-linux/regolith-styles), Regolith styles are a convention by which a set of files which define key/value pairs are loaded into memory and can be queried by `xrdb` or `xrescat`. `Xresources` employs the [C preprocessor](https://en.wikipedia.org/wiki/C_preprocessor) to allow for behaviors such as including more files, defining constants and conditional expressions. In Regolith, only two preprocessor directives are used: `#include` and `#define`. `#include` statements are used to reference other files. Collections of files called `looks` were covered in the previous section of this guide. `#define` statements simply allow for a symbolic value to be replaced by a literal value, like defining a variable.

## Defines

To maximize the re-use of theme information in Regolith, `Xresources` are divided into two categories of files: definition files and application files. The definition files make heavy use of the `define` directive. They essentially bind an abstract key, such as "blue" or "terminal font" to a literal value, such as `#0000FF` or `Source Code Pro Medium`. In making changes to files, it's expected that these defines will change. The user may wish to specify a different icon set, or typeface, and would do so by modifying or creating a new definition file. Once this file is created, it needs to be referenced by a top-level `Xresources` file in `~/.Xresources-regolith`.

{{% pageinfo %}}
**Note**: when referencing other files in `Xresources` via the `#include` directive, shortcuts like `$HOME` and `~/` are not available. Absolute paths are required.
{{% /pageinfo %}}

## Application `Xresources` files

As mentioned previously, a number of `Xresources` are present in `/etc/regolith/styles`, including those for specific applications such as `st` or `i3-wm`. Opening these files will show a mapping of the abstract keys provided by the defines files to application specific keys. In this way, the general description of the look can be mapped to any UI component or application that can read from `Xresources`.

## Loading Order

The `/usr/bin/regolith-session-init` script will check for the first Xresources file it finds in the following order:

1. `~/.Xresources-regolith`
2. `/etc/regolith/styles/root`

In addition to a Regolith Xresources file, `~/.Xresources` will also be loaded if it exists upon session start.

After loading a root `Xresources` file, the session init script then merges any entries found in the `~/.config/regolith/Xresources` file. This file provides a quick way of simply overriding a few values without having to copy the entire set of resource definitions.

## Reloading Xresources

The `regolith-look` command can be used to reload all `Xresources` entries as they are otherwise only loaded upon session initialization:

```console
$ regolith-look refresh
```

Alternatively, the `xrdb` command can be used to refresh specific `Xresources` files after they have changed. For example, to reload the user `Xresources` file run:

```console
$ xrdb -merge ~/.Xresources-regolith
```

### Verification

You can test that a change has been made to your Xresources file by querying it from the command line. If a change was made to key `foo.bar` then the following command will return it's current value, or `empty` if unset:

```console
$ xrescat foo.bar empty
```
