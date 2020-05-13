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

<p>Regolith is available as a <b>stand-alone ISO</b> that can be installed as a complete Linux operating system, and as a "<b>personal package archive</b>" (PPA) that installs the Regolith desktop into an existing Ubuntu 18.04 or 20.04 system.  This page provides a quick start for installs and upgrades but <a href="../docs/getting-started/install">more thorough documentation</a> is available.</p>
</span>
	</div>
</section>


<div class="container">
  <div class="row">
    <div class="col-sm p-5">
				<h2><i class="fas fa-compact-disc"></i> Regolith Linux ISO</h2>
				<p>
					Regolith can be installed as a stand-alone operating system, and is a good option for the following scenarios:
					<ul>
						<li>Minimal system, small install size, less RAM usage</li>
						<li>Once installed, all defaults and packages are in a known good state</li>
						<li>Provides more Regolith branding</li>
					</ul>
				<a href="https://github.com/regolith-linux/regolith-desktop/releases/tag/R1.4.1">Download the ISO </a> and write it to a USB flash drive to install or test drive Regolith as an operating system.  To learn how, visit the <a class="text-warning"  href="https://tutorials.ubuntu.com/tutorial/tutorial-install-ubuntu-desktop">Ubuntu installer tutorial</a>.</p>
				<div class="d-flex justify-content-center"><a class="btn btn-lg btn-secondary mr-3 mb-4" href="https://github.com/regolith-linux/regolith-desktop/releases/tag/R1.4">
      Download Regolith 1.4.1<i class="fas fa-cloud-download-alt ml-2 "></i></a><a class="btn btn-lg btn-primary mr-3 mb-4" href="{{< relref "/docs" >}}">
      Learn More <i class="fas fa-book-reader ml-2"></i></a></div>				
			</th>
    </div>
    <div class="col-sm p-5">
			<h2><i class="fas fa-download"></i> Regolith Desktop PPA</h2>
			<p>
					Regolith can be installed in an existing Ubuntu 18.04 or 20.04 system by adding a Regolith PPA and installing the <code>regolith-desktop</code> package.  Advantages to Regolith via PPA:
					<ul>
						<li>More compatibility with standard Ubuntu</li>
						<li>Easy interop with other installed desktop environments</li>
						<li>Keep existing system installation</li>
						<li>Easy to remove and return to other desktop environments</li>
					</ul>
					To install Regolith Desktop from the <code>release</code> PPA:
					<pre class="border rounded p-2">
$ sudo add-apt-repository ppa:regolith-linux/release
$ sudo apt install regolith-desktop i3xrocks-net-traffic i3xrocks-cpu-usage i3xrocks-time</pre>
					Learn more about <a href="https://help.ubuntu.com/community/Repositories/CommandLine#Adding_Launchpad_PPA_Repositories">adding PPAs here</a>, and more about <a href="../docs/getting-started/install/#ppa-sources">PPAs that Regolith provides here</a>.
				</p>
    </div>
  </div>
</div>
