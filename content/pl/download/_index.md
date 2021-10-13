---
title: "Pobierz"
linkTitle: "Pobierz"
weight: 20
menu:
  main:
    weight: 20
---

<div class="container text-center pt-5 mt-5">
    <div class="row">
        <div class="col col-md-auto"><h1><i class="fas fa-cloud-download-alt"></i></h1></div>
        <div class="col"><p>Regolith jest dostępny jako <b>samodzielny obraz ISO</b>, który może być zainstalowany jako kompletny system operacyjny systemu Linux lub jako "<b>osobiste archiwum pakietów</b>" (PPA), które instaluje pulpit Regolith w zainstalowanym już Ubuntu 18.04, 20.04 lub 21.04.  This page provides a quick start for installs and upgrades but <a href="../docs/getting-started/install">more detailed documentation</a> is available.</p>
        </div>
    </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-sm p-5">
                <h2><i class="fas fa-compact-disc"></i> Regolith Linux 1.6 ISO</h2>
                <p>
                    Regolith może zostać zainstalowany jako samodzielny system operacyjny i stanowi dobrą opcję dla następujących zastosowań:
                    <ul>
                        <li>Minimalny system, mały rozmiar instalacji, mniejsze użycie pamięci RAM</li>
                        <li>Once installed, all defaults and packages are in a known good state</li>
                        <li>Provides more Regolith branding</li>
                    </ul>
                Download the ISO and write it to a USB flash drive to install or test drive Regolith as an operating system.  To learn how, visit the <a class="text-warning"  href="https://tutorials.ubuntu.com/tutorial/tutorial-install-ubuntu-desktop">Ubuntu installer tutorial</a>. All releases are <a href="https://github.com/regolith-linux/regolith-ubuntu-iso-builder/releases">available on GitHub</a> including file hashes.</p>         
                <div class="d-flex justify-content-center">
                <ul>
                <a class="btn btn-lg btn-secondary mr-3 mb-4" href="https://github.com/regolith-linux/regolith-ubuntu-iso-builder/releases/download/release-release-hirsute-hirsute_standard-1.6.0/Regolith_1.6.0_hirsute.iso">
                Download Regolith 1.6 (21.04)<i class="fas fa-cloud-download-alt ml-2 "></i></a>
                <a class="btn btn-lg btn-secondary mr-3 mb-4" href="https://github.com/regolith-linux/regolith-ubuntu-iso-builder/releases/download/release-release-focal-focal_standard-1.6.0/Regolith_1.6.0_focal.iso">
                Download Regolith 1.6 (20.04 UEFI) <i class="fas fa-cloud-download-alt ml-2 "></i></a>
                <a class="btn btn-lg btn-secondary mr-3 mb-4" href="https://github.com/regolith-linux/regolith-ubuntu-iso-builder/releases/download/release-release-focal-focal_legacy_boot-1.6.0/Regolith_1.6.0_focal.iso">
                Download Regolith 1.6 (20.04 BIOS)<i class="fas fa-cloud-download-alt ml-2 "></i></a>
                <a class="btn btn-lg btn-primary mr-3 mb-4" href="{{< relref ">}}">
                Learn More <i class="fas fa-book-reader ml-2"></i></a>
                </ul>
            </div>              
            </th>
    </div>
    <div class="col-sm p-5">
            <h2><i class="fas fa-download"></i> Regolith Desktop 1.6 PPA</h2>
            <p>
                    Regolith może być zainstalowany w istniejącym Ubuntu 18.04 (Bionic), 20.04 (Focal) lub 21.04 (Hirsute) dodając Regolith PPA i instalując jeden z <a href="../docs/getting-started/install/#desktop-packages">pakietów <code>regolith-desktop</code></a>.  Zalety zainstalowania Regolith za pośrednictwem PPA:
                    <ul>
                        <li>Większa kompatybilność ze standardowym Ubuntu</li>
                        <li>Lepsza interoperacyjność z innymi zainstalowanymi środowiskami graficznymi</li>
                        <li>Zachowuje istniejącą instalację systemu</li>
                        <li>Łatwe usuwanie i powrót do innych środowisk graficznych</li>
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
