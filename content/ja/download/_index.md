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
        <div class="col"><p>Regolithは、完全なLinuxオペレーティングシステムとしてインストールできる<b>スタンドアローンISO</b>と、既存のUbuntu 18.04、20.04、21.04システムにRegolith Desktopをインストールする"<b>Personal Package Archive</b>"（PPA）として提供されています。このページでは、インストールとアップグレードのクイックスタートを提供していますが、<a href="../docs/getting-started/install">より詳細なドキュメント</a>が用意されています。</p>
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
                        <li>最小限のシステム、小さなインストールサイズ、少ないRAM使用量</li>
                        <li>一度インストールすれば、すべてのデフォルトとパッケージは良好な状態に</li>
                        <li>Regolithのブランド力の強化</li>
                    </ul>
                ISOをダウンロードしてUSBメモリに書き込むことで、OSとしてRegolithをインストールしたり、テストしたりすることができます。インストール方法は、<a class="text-warning"  href="https://tutorials.ubuntu.com/tutorial/tutorial-install-ubuntu-desktop">Ubuntuインストーラのチュートリアル</a>をご覧ください。すべてのリリースはファイルハッシュを含めて<a href="https://github.com/regolith-linux/regolith-ubuntu-iso-builder/releases">GitHubで公開</a>されています。
</p>         
                <div class="d-flex justify-content-center">
                <ul>
                <a class="btn btn-lg btn-secondary mr-3 mb-4" href="https://github.com/regolith-linux/regolith-ubuntu-iso-builder/releases/download/release-release-hirsute-hirsute_standard-1.6.0/Regolith_1.6.0_hirsute.iso">
                Regolith 1.6 (21.04) をダウンロード<i class="fas fa-cloud-download-alt ml-2 "></i></a>
                <a class="btn btn-lg btn-secondary mr-3 mb-4" href="https://github.com/regolith-linux/regolith-ubuntu-iso-builder/releases/download/release-release-focal-focal_standard-1.6.0/Regolith_1.6.0_focal.iso">
                Regolith 1.6 (20.04 UEFI) をダウンロード <i class="fas fa-cloud-download-alt ml-2 "></i></a>
                <a class="btn btn-lg btn-secondary mr-3 mb-4" href="https://github.com/regolith-linux/regolith-ubuntu-iso-builder/releases/download/release-release-focal-focal_legacy_boot-1.6.0/Regolith_1.6.0_focal.iso">
                Regolith 1.6 (20.04 BIOS) をダウンロード<i class="fas fa-cloud-download-alt ml-2 "></i></a>
                <a class="btn btn-lg btn-primary mr-3 mb-4" href="{{< relref "/docs" >}}">
                詳細はこちら <i class="fas fa-book-reader ml-2"></i></a>
                </ul>
            </div>              
            </th>
    </div>
    <div class="col-sm p-5">
            <h2><i class="fas fa-download"></i> Regolith Desktop 1.6 PPA</h2>
            <p>
                    Regolithは、Regolith PPAを追加し、<a href="../docs/getting-started/install/#desktop-packages"><code>regolith-desktop</code> パッケージ</a>をインストールすることで、既存の Ubuntu 18.04(Bionic)、Ubuntu 20.04(Focal)、または Ubuntu 21.04(Hirsute)システムにインストールできます。以下がPPAを利用したRegolithの利点です:
                    <ul>
                        <li>標準のUbuntuとの互換性の向上</li>
                        <li>インストールされている他のデスクトップ環境との簡単な相互運用</li>
                        <li>既存のシステムインストールの維持</li>
                        <li>削除及び他デスクトップ環境への移行のしやすさ</li>
                    </ul>
                    <p>Regolith Desktopの標準バージョンを <code>release</code> PPAからインストールする場合:
                    <pre class="border rounded p-2">
$ sudo add-apt-repository ppa:regolith-linux/release
$ sudo apt install regolith-desktop-standard</pre>
                    </p>PPAの追加の詳細については<a href="https://help.ubuntu.com/community/Repositories/CommandLine#Adding_Launchpad_PPA_Repositories">こちら</a>をご覧ください。Regolithが提供するPPAの詳細については<a href="../docs/getting-started/install/#ppa-sources">こちら</a>をご覧ください。
                </p>
    </div>
  </div>
</div>
