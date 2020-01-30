---
title: "Download"
linkTitle: "Download"
weight: 20
menu:
  main:
    weight: 20
---


<section class="row td-box td-box--1 position-relative td-box--gradient td-box--height-auto">
	<div class="container text-center td-arrow-down">
		<span class="h4 mb-0">
<h1><i class="fas fa-cloud-download-alt ml-2 "></i> Get Regolith</h1>

<p>Regolith is available in two forms; as a <b>stand-alone ISO</b> that can be installed as a complete Linux operating system, and as a "<b>personal package archive</b>" (PPA) that installs the Regolith desktop into an existing Ubuntu desktop.
<p>Both installation methods result in the same Regolith experience. Both are offered for your convienence.</p>
</span>
	</div>
</section>
{{< blocks/section color="white">}}

{{% blocks/feature icon="fas fa-compact-disc" title="Regolith Linux ISO Installer" url="https://sourceforge.net/projects/regolith-linux/files/regolith-linux-r1.3/" url_text="Download" %}}
Starting from scratch or simply want to try Regolith out in a VM or LiveUSB environment? <a href="https://sourceforge.net/projects/regolith-linux/files/regolith-linux-r1.3/">Download the ISO <i class="fas fa-cloud-download-alt"></i></a> and write it to a USB flash drive to install or test drive Regolith as an operating system.  To learn how, visit the <a class="text-warning"  href="https://tutorials.ubuntu.com/tutorial/tutorial-install-ubuntu-desktop">Ubuntu installer tutorial</a>.
{{% /blocks/feature %}}

{{% blocks/feature icon="fas fa-box-open" title="Regolith Desktop PPA" %}}
Add the <a href="https://launchpad.net/~regolith-linux/+archive/ubuntu/stable">Regolith PPA</a> to your existing Ubuntu system and install the regolith-desktop package with the following terminal commands:
<pre class="text-left border rounded p-2">
$ sudo add-apt-repository ppa:regolith-linux/release
$ sudo apt install regolith-desktop
</pre>After installation, Regolith will appear as a desktop session on the login screen.  Learn more about <a href="https://help.ubuntu.com/community/Repositories/CommandLine#Adding_Launchpad_PPA_Repositories">adding PPAs here</a>.
{{% /blocks/feature %}}

{{% blocks/feature icon="fas fa-external-link-alt" title="Upgrade from earlier version" %}}
To upgrade your existing 1.1 or 1.2 version of Regolith to 1.3, simply move to the new PPA and perform a <code>dist-upgrade</code>:
<pre class="text-left border rounded p-2">
$ sudo add-apt-repository --remove ppa:kgilmer/regolith-stable
$ sudo add-apt-repository ppa:regolith-linux/release
$ sudo apt dist-upgrade
</pre>
If you have made customizations to i3wm or your styles, it's recommended to use the defaults upon login and then manually integrate your changes back in.  To ensure that the defaults are loaded, move your changes and then log back in.
<pre class="text-left border rounded p-2">
$ mv ~/.config/regolith ~/old-regolith-config
$ mv ~/.Xresources-regolith ~/old-regolith-styles
$ # now log back in
</pre>
{{% /blocks/feature %}}

{{% blocks/feature icon="fas fa-snowplow" title="Remove Regolith Desktop" %}}
If you decide Regolith isn't what you're looking for, restore your previous GNOME settings and completely remove Regolith by logging in to the standard Ubuntu session and executing the following commands from a terminal:<pre class="text-left border rounded p-2">
$ sudo add-apt-repository --remove ppa:regolith-linux/release
$ sudo apt remove regolith-*
$ sudo apt autoremove
$ source ~/.regolith-gnome-backup
$ rm -Rf ~/.regolith-gnome-backup ~/.config/regolith
</pre>
{{% /blocks/feature %}}

{{% blocks/feature icon="fas fa-backward" title="Earlier Releases" %}}
While Regolith is a young project, it already has a few releases behind it.  You can find [earlier ISO installer releases on SourceForge.net](https://sourceforge.net/projects/regolith-linux/).
{{% /blocks/feature %}}

{{% blocks/feature icon="fas fa-question-circle" title="More Help" %}}
Care for more details? Another version of these installation instructions are available in [the user documentation](../docs/getting-started/install).
{{% /blocks/feature %}}

{{< /blocks/section >}}