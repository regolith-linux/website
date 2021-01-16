---
title: "Download"
linkTitle: "Download"
weight: 20
menu:
  main:
    weight: 20
---
<div class="container text-center pt-5 mt-5">
	<div class="row">
		<div class="col col-md-auto"><h1><i class="fas fa-cloud-download-alt"></i></h1></div>
		<div class="col"><p>Regolith is available as a <b>stand-alone ISO</b> that can be installed as a complete Linux operating system, and as a "<b>personal package archive</b>" (PPA) that installs the Regolith desktop into an existing Ubuntu 18.04, 20.04, or 20.10 system.  This page provides a quick start for installs and upgrades but <a href="../docs/getting-started/install">more detailed documentation</a> is available.</p>
		</div>
	</div>
</div>

<div class="container">
  <div class="row">
    <div class="col-sm p-5">
				<h2><i class="fas fa-compact-disc"></i> Regolith Linux 1.4.1 ISO</h2>
				<p>
					Regolith can be installed as a stand-alone operating system, and is a good option for the following scenarios:
					<ul>
						<li>Minimal system, small install size, less RAM usage</li>
						<li>Once installed, all defaults and packages are in a known good state</li>
						<li>Provides more Regolith branding</li>
					</ul>
				<a href="https://github.com/regolith-linux/regolith-desktop/releases/tag/R1.4.1">Download the ISO </a> and write it to a USB flash drive to install or test drive Regolith as an operating system.  To learn how, visit the <a class="text-warning"  href="https://tutorials.ubuntu.com/tutorial/tutorial-install-ubuntu-desktop">Ubuntu installer tutorial</a>.</p>
				<p>After installation, Regolith can update itself to version 1.5 from the pre-configured <code>release</code> PPA via <code>apt dist-upgrade</code>.</p>
				<div class="d-flex justify-content-center"><a class="btn btn-lg btn-secondary mr-3 mb-4" href="https://github.com/regolith-linux/regolith-desktop/releases/tag/R1.4.1">
      Download Regolith 1.4.1<i class="fas fa-cloud-download-alt ml-2 "></i></a><a class="btn btn-lg btn-primary mr-3 mb-4" href="{{< relref "/docs" >}}">
      Learn More <i class="fas fa-book-reader ml-2"></i></a></div>				
			</th>
    </div>
    <div class="col-sm p-5">
			<h2><i class="fas fa-download"></i> Regolith Desktop 1.5.2 PPA</h2>
			<p>
					Regolith can be installed in an existing Ubuntu 18.04, 20.04, or 20.10 system by adding a Regolith PPA and installing one of <a href="../docs/getting-started/install/#desktop-packages">the <code>regolith-desktop</code> packages</a>.  Advantages to Regolith via PPA:
					<ul>
						<li>More compatibility with standard Ubuntu</li>
						<li>Easy interop with other installed desktop environments</li>
						<li>Keep existing system installation</li>
						<li>Easy to remove and return to other desktop environments</li>
					</ul>
					<p>To install the standard variant of Regolith Desktop from the <code>release</code> PPA:
					<pre class="border rounded p-2">
$ sudo add-apt-repository ppa:regolith-linux/release
$ sudo apt install regolith-desktop-standard</pre>
					</p>Learn more about <a href="https://help.ubuntu.com/community/Repositories/CommandLine#Adding_Launchpad_PPA_Repositories">adding PPAs here</a>, and more about <a href="../docs/getting-started/install/#ppa-sources">PPAs that Regolith provides here</a>
				</p>
    </div>
  </div>
</div>
