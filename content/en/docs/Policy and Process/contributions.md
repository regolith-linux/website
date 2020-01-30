---
title: "Contribute"
linkTitle: "Contribute"
weight: 3
description: >
  How to contribute to Regolith.
---

As an [open source project](https://github.com/regolith-linux), Regolith is open to anyone to extend, fork, or modify as they see fit.  Additionally, we welcome people to join as [contributors](https://github.com/orgs/regolith-linux/people) to the project. If you already have something in mind, please file an issue describing the change you're planning to make to Regolith, or discuss in the [Slack channel](https://regolith-linux.herokuapp.com/).  This ensures work isn't duplicated or effort wasted.  If you're interested in seeing what work is available to start with, take a look at the [list of issues looking for help](https://github.com/regolith-linux/regolith-desktop/labels/help%20wanted) to see what is needed.  To get a picture of the future, check [the roadmap](https://regolith-linux.org/news.html#roadmap). Regolith is a young project with much potential for improvement!

## Join our Slack channel

Click [this link](https://regolith-linux.herokuapp.com/) to join our Slack channel, which allows you to communicate with the developers of Regolith and other users. Here is where we brainstorm about new features, ways to improve current features, and fix bugs. 

## Install the `regolith-linux/unstable` PPA

Development is done in the `ppa:regolith-linux/unstable` PPA and then tested before pushed to production in the `ppa:regolith-linux/stable` and ultimately `ppa:regolith-linux/release` PPA. If you'd like to test fixes that haven't made it to the stable PPA yet or would just like to always be using the latest updates, the following steps describe how the unstable PPA is added:

From your existing Ubuntu 18.04 (Bionic), 19.04 (Disco), or 19.10 (Eoan) system, perform the following installation steps: 

1. First we need to remove the `regolith-stable` PPA. Open a terminal, and enter: <br/>`sudo add-apt-repository --remove ppa:kgilmer/regolith-stable`
2. Now enter the following to add `regolith-unstable`: <br/>`sudo add-apt-repository -y ppa:regolith-linux/unstable`
3. After the sync completes, enter: <br/>`sudo apt install regolith-desktop`
4. The following command will need to be ran <br/>`sudo apt update && sudo apt upgrade && sudo apt full-upgrade`
5. Some packages will be upgraded.  When this completes, reboot.

### Reverting to `regolith-stable`

Simply follow the steps #1 and #2 in reverse.  Keep in mind that the package manager will not downgrade your packages, so if you want to just use what's in `regolith-stable`, you may need to uninstall Regolith and reinstall it.  Any configuration files in your user directory will not be altered.
