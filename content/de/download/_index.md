---
title: "Herunterladen"
linkTitle: "Herunterladen"
weight: 20
menu:
  main:
    weight: 20
---
<section class="row td-box td-box--1 position-relative td-box--gradient td-box--height-auto">
	<div class="container text-center td-arrow-down">
		<span class="h4 mb-0">
<h1><i class="fas fa-cloud-download-alt ml-2 "></i> Hole Regolith</h1>

<p>Regolith ist erhältlich als <b>unabhängiges ISO</b>, das als vollständiges Linux-Betriebssystem installiert werden kann, und als "<b>persönliches Paketarchiv</b>". (PPA), das den Regolith-Desktop in ein bestehendes Ubuntu 18.04 oder 20.04 System installiert.  Diese Seite bietet einen Schnellstart für Installationen und Upgrades, aber eine <a href="../docs/getting-startet/install">ausführlichere Dokumentation</a> ist verfügbar.</p>
</span>
	</div>
</section>


<div class="container">
  <div class="row">
    <div class="col-sm p-5">
				<h2><i class="fas fa-compact-disc"></i> Regolith Linux ISO</h2>
				<p>
					Regolith kann als eigenständiges Betriebssystem installiert werden und ist eine gute Option für die folgenden Szenarien:
					<ul>
						<li>Minimalsystem, geringe Installationsgröße, weniger RAM-Nutzung</li>
						<li>Nach der Installation befinden sich alle Standardeinstellungen und Pakete in einem bekannten, guten Zustand</li>
						<li>Bietet mehr Regolith-Branding</li>
					</ul>
				<a href="https://github.com/regolith-linux/regolith-desktop/releases/tag/R1.4.1">Laden Sie die ISO </a> herunter und schreiben Sie es auf einen USB-Stick um Regolith als Betriebssystem zu installieren oder zu testen.  Um zu erfahren, wie das geht, besuchen Sie das <a class="text-warning" href="https://tutorials.ubuntu.com/tutorial/tutorial-install-ubuntu-desktop">Ubuntu-Installationsprogramm-Tutorial</a>.</p>
				<div class="d-flex justify-content-center"><a class="btn btn-lg btn-secondary mr-3 mb-4" href="https://github.com/regolith-linux/regolith-desktop/releases/tag/R1.4.1">
      Regolith 1.4.1 herunterladen <i class="fas fa-cloud-download-alt ml-2 "></i></a><a class="btn btn-lg btn-primary mr-3 mb-4" href="{{< relref "/docs" >}}">
      Mehr erfahren <i class="fas fa-book-reader ml-2"></i></a></div>
			</th>
    </div>
    <div class="col-sm p-5">
			<h2><i class="fas fa-download"></i> Regolith Desktop PPA</h2>
			<p>
					Regolith kann in ein bestehendes Ubuntu 18.04 oder 20.04 System installiert werden, indem ein Regolith PPA hinzugefügt und das Paket <code>regolith-desktop</code> installiert wird.  Vorteile von Regolith über PPA:
					<ul>
						<li>Mehr Kompatibilität mit Standard-Ubuntu</li>
						<li>Einfachee Interoperabilität mit anderen installierten Desktop-Umgebungen</li>
						<li>Bestehende Systeminstallation wird beibehalten</li>
						<li>Einfach zu entfernen und zu anderen Desktop-Umgebungen zurückzukehren</li>
					</ul>
					Zur Installation von Regolith Desktop über <code>release</code> PPA:
					<pre class="Rand abgerundet p-2">
$ sudo add-apt-repository ppa:regolith-linux/release
$ sudo apt install regolith-desktop i3xrocks-net-traffic i3xrocks-cpu-usage i3xrocks-time</pre>
					Erfahren Sie mehr über <a href="https://help.ubuntu.com/community/Repositories/CommandLine#Adding_Launchpad_PPA_Repositories">das Hinzufügen von PPAs</a> oder mehr über <a href="../docs/getting-started/install/#ppa-sources">PPAs, die Regolith hier</a> zur Verfügung stellt.
				</p>
    </div>
  </div>
</div>
