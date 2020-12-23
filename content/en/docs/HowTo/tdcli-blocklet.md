---
title: "Manage a To-Do List"
weight: 7
description: >
  Create and manage a to-do list from status bar
---

[`td-cli`](https://github.com/darrikonn/td-cli) is a command line todo manager written in Python 3 for organizing todo lists across multiple projects.

Regolith includes a status bar blocklet for accessing `td-cli` directly from the bar. It can be installed as follows:

```bash
sudo apt install i3xrocks-todo
```

After installing `td-cli` you can access it via command line using `td`. The full documentation of `td-cli`'s API can be found [here](https://github.com/darrikonn/td-cli/blob/master/API.md).
For example, let's create a todo list with a group name of Regolith, set it as the default project, and then add a new task to this group:

```bash
td ag regolith
td g regolith p
td a "Write a HowTo for td-cli"
```

Now, if you click on the `td-cli` blocklet (on the left of the time blocklet in the figure below) a floating terminal opens up with an interactive instance of `td-cli`:

<img class="shadow m-5" src="../tdcli.png"/>

<img class="shadow m-5" src="../tdcli_window.png"/>

You can set this blocklet to only show number of uncompleted tasks in the bar by setting the following key in your `Xresource` file, for example, `~/.config/regolith/Xresources`:

```bash
i3xrocks.todo.uncompleted: true
```

By default, this key is set to `false`. Moreover, you can add a keybinding for accessing `td-cli` via a floating terminal by adding the following line to your `i3` config file, for example, `~/.config/regolith/i3/config`:

```bash
bindsym $mod+Ctrl+d exec --no-startup-id "/usr/bin/gnome-terminal --class=floating_window -e 'td --interactive'"
```

Alternatively, you add these lines to your `i3` config file, first:

```bash
set_from_resource $i3-wm.bindsym.1 i3-wm.bindsym.1 :
set_from_resource $i3-wm.bindsym.program.1 i3-wm.bindsym.program.1 :
bindsym $mod+$i3-wm.bindsym.1 exec --no-startup-id "$i3-wm.bindsym.program.1"
```

Then, add the followings to your `Xresource` file:

```bash
i3-wm.bindsym.1: Ctrl+d
i3-wm.bindsym.program.1: /usr/bin/gnome-terminal --class=floating_window -e 'td --interactive'
```

