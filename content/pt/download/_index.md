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
                        <li>Sistema mínimo, tamanho de instalação pequeno, menos uso de RAM</li>
                        <li>Uma vez instalado, todos os padrões e pacotes estão em um bom estado conhecido</li>
                        <li>Fortalece a marca Regolith</li>
                    </ul>
                <a href="https://github.com/regolith-linux/regolith-desktop/releases/tag/R1.4.1">Download the ISO </a> and write it to a USB flash drive to install or test drive Regolith as an operating system.  Para saber como, visite o <a class="text-warning"  href="https://tutorials.ubuntu.com/tutorial/tutorial-install-ubuntu-desktop">Tutorial do instalador Ubuntu</a>.</p>
                <p>Após a instalação, o Regolith pode se atualizar para a versão 1.5 da versão <code>pré-configurada</code> PPA via <code>apt dist-upgrade</code>.</p>
                <div class="d-flex justify-content-center"><a class="btn btn-lg btn-secondary mr-3 mb-4" href="https://github.com/regolith-linux/regolith-desktop/releases/tag/R1.4.1">
      Download Regolith 1.4.1<i class="fas fa-cloud-download-alt ml-2 "></i></a><a class="btn btn-lg btn-primary mr-3 mb-4" href="{{< relref ">}}">
      Saiba Mais <i class="fas fa-book-reader ml-2"></i></a></div>              
            </th>
    </div>
    <div class="col-sm p-5">
            <h2><i class="fas fa-download"></i> Regolith Desktop 1.5 PPA</h2>
            <p>
                    Regolith can be installed in an existing Ubuntu 18.04, 20.04, or 20.10 system by adding a Regolith PPA and installing one of <a href="../docs/getting-started/install/#desktop-packages">the <code>regolith-desktop</code> packages</a>.  Vantagens do Regolith via PPA:
                    <ul>
                        <li>Mais compatibilidade com o Ubuntu padrão</li>
                        <li>Interoperabilidade fácil com outros ambientes desktop instalados</li>
                        <li>Mantém a instalação do sistema existente</li>
                        <li>Fácil de remover e retornar para outros ambientes desktop</li>
                    </ul>
                    <p>Para instalar a variante padrão do Regolith Desktop a partir da <code>versão</code> PPA:
                    <pre class="border rounded p-2">
$ sudo add-apt-repository ppa:regolith-linux/release
$ sudo apt install regolith-desktop-standard</pre>
                    </p>Saiba mais sobre <a href="https://help.ubuntu.com/community/Repositories/CommandLine#Adding_Launchpad_PPA_Repositories">adicionar PPAs aqui</a>, e mais sobre <a href="../docs/getting-started/install/#ppa-sources">PPAs que o Regolith disponibiliza aqui</a>
                </p>
    </div>
  </div>
</div>
