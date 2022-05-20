---
title: "ダウンロード"
linkTitle: "Download"
weight: 20
menu:
  main:
    weight: 20
---

<div class="container text-center pt-5 mt-5">
    <div class="row">
        <div class="col col-md-auto"><h1><i class="fas fa-cloud-download-alt"></i></h1></div>
        <div class="col"><p>Regolith is available as a <b>stand-alone ISO</b> that can be installed as a complete Linux operating system, and as a "<b>personal package archive</b>" (PPA) that installs the Regolith desktop into an existing Ubuntu 18.04, 20.04, or 21.04 system.  This page provides a quick start for installs and upgrades but <a href="../docs/getting-started/install">more detailed documentation</a> is available.</p>
        </div>
    </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-sm p-5">
                <h2><i class="fas fa-compact-disc"></i> Regolith Linux 1.6 ISO</h2>
                <p>
                    Regolithはスタンドアローンオペレーティングシステムとしてインストールでき、以下のような場合に有効な選択肢です:
                    <ul>
                        <li>Minimal system, small install size, less RAM usage</li>
                        <li>Once installed, all defaults and packages are in a known good state</li>
                        <li>Provides more Regolith branding</li>
                    </ul>
                Download the ISO and write it to a USB flash drive to install or test drive Regolith as an operating system.  To learn how, visit the <a class="text-warning"  href="https://tutorials.ubuntu.com/tutorial/tutorial-install-ubuntu-desktop">Ubuntu installer tutorial</a>. All releases are <a href="https://github.com/regolith-linux/regolith-ubuntu-iso-builder/releases">available on GitHub</a> including file hashes.</p>         
                <div class="d-flex justify-content-center">
                <ul>
                <a class="btn btn-lg btn-secondary mr-3 mb-4" href="https://github.com/regolith-linux/regolith-ubuntu-iso-builder/releases/download/release-release-hirsute-hirsute_standard-1.6.0/Regolith_1.6.0_hirsute.iso">
                Regolith 1.6 (21.04)をダウンロード<i class="fas fa-cloud-download-alt ml-2 "></i></a>
                <a class="btn btn-lg btn-secondary mr-3 mb-4" href="https://github.com/regolith-linux/regolith-ubuntu-iso-builder/releases/download/release-release-focal-focal_standard-1.6.0/Regolith_1.6.0_focal.iso">
                Regolith 1.6 (20.04 UEFI)をダウンロード <i class="fas fa-cloud-download-alt ml-2 "></i></a>
                <a class="btn btn-lg btn-secondary mr-3 mb-4" href="https://github.com/regolith-linux/regolith-ubuntu-iso-builder/releases/download/release-release-focal-focal_legacy_boot-1.6.0/Regolith_1.6.0_focal.iso">
                Regolith 1.6 (20.04 BIOS)をダウンロード<i class="fas fa-cloud-download-alt ml-2 "></i></a>
                <a class="btn btn-lg btn-primary mr-3 mb-4" href="{{< relref "/docs" >}}">
                詳細はこちら <i class="fas fa-book-reader ml-2"></i></a>
                </ul>
            </div>              
            </th>
    </div>
    <div class="col-sm p-5">
            <h2><i class="fas fa-download"></i> Regolith Desktop 1.6 PPA</h2>
            <p>
                    Regolith can be installed in an existing Ubuntu 18.04 (Bionic), 20.04 (Focal), or 21.04 (Hirsute) system by adding a Regolith PPA and installing one of <a href="../docs/getting-started/install/#desktop-packages">the <code>regolith-desktop</code> packages</a>.  Advantages to Regolith via PPA:
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
                    </p>PPAの追加の詳細については<a href="https://help.ubuntu.com/community/Repositories/CommandLine#Adding_Launchpad_PPA_Repositories">こちら</a>をご覧ください。Regolithが提供するPPAの詳細については<a href="../docs/getting-started/install/#ppa-sources">こちら</a>を御覧ください。
                </p>
    </div>
  </div>
</div>
