---
title: "Descarregar"
linkTitle: "Descarregar"
weight: 20
menu:
  main:
    weight: 20
---
<section class="row td-box td-box--1 position-relative td-box--gradient td-box--height-auto">
	<div class="container text-center td-arrow-down">
		<span class="h4 mb-0">
<h1><i class="fas fa-cloud-download-alt ml-2 "></i> Obter o Regolith</h1>

<p>O Regolith está disponível como um <b>ISO independente</b> que pode ser instalado como um sistema Linux completo, ou como um "<b>personal package archive</b>" (PPA) que instala o Regolith desktop num sistema Ubuntu 18.04 ou 20.04 existente.  Esta página oferece um guia rápido para instalações e atualizações, mas existe mais <a href="../docs/getting-started/install">na documentação disponível</a>.</p>
</span>
	</div>
</section>


<div class="container">
  <div class="row">
    <div class="col-sm p-5">
				<h2><i class="fas fa-compact-disc"></i> ISO do Regolith Linux</h2>
				<p>
					O Regolith pode ser instalado como um sistema operativo independente, e é uma boa opção para os cenários seguintes:
					<ul>
						<li>Sistema mínimo, pouco espaço para instalação, menos uso de RAM</li>
						<li>Depois de instalados, todos os padrões e pacotes estão reconhecidamente em bom estado</li>
						<li>Fornece mais cunho do Regolith</li>
					</ul>
				<a href="https://github.com/regolith-linux/regolith-desktop/releases/tag/R1.4.1">Descarregar o ISO </a> e grave-o numa unidade flash USB para instalar ou testar o Regolith como sistema operativo.  Para saber como, visite o <a class="text-warning"  href="https://tutorials.ubuntu.com/tutorial/tutorial-install-ubuntu-desktop">tutorial do instalador do Ubuntu</a>.</p>
				<div class="d-flex justify-content-center"><a class="btn btn-lg btn-secondary mr-3 mb-4" href="https://github.com/regolith-linux/regolith-desktop/releases/tag/R1.4.1">
      Descarregar o Regolith 1.4.1<i class="fas fa-cloud-download-alt ml-2 "></i></a><a class="btn btn-lg btn-primary mr-3 mb-4" href="{{< relref "/docs" >}}">
      Saber mais <i class="fas fa-book-reader ml-2"></i></a></div>				
			</th>
    </div>
    <div class="col-sm p-5">
			<h2><i class="fas fa-download"></i> PPA do Regolith Desktop</h2>
			<p>
					O Regolith pode ser instalado num sistema Ubuntu 18.04 ou 20.04 existente adicionando a PPA Regolith e instalando o pacote <code>regolith-desktop</code>.  Vantagens do Regolith via PPA:
					<ul>
						<li>Mais compatibilidade com o Ubuntu padrão</li>
						<li>Interoperabilidade fácil com outros ambientes de desktop instalados</li>
						<li>Mantem a instalação do sistema existente</li>
						<li>Fácil de remover e retornar aos outros ambientes de desktop</li>
					</ul>
					Para instalar o Regolith Desktop a partir da <code>versão</code> PPA:
					<pre class="border rounded p-2">
$ sudo add-apt-repository ppa:regolith-linux/release
$ sudo apt install regolith-desktop i3xrocks-net-traffic i3xrocks-cpu-usage i3xrocks-time</pre>
					Saber mais sobre <a href="https://help.ubuntu.com/community/Repositories/CommandLine#Adding_Launchpad_PPA_Repositories">adicionar PPAs aqui</a>, e mais sobre <a href="../docs/getting-started/install/#ppa-sources">PPAs que o Regolith fornece aqui</a>.
				</p>
    </div>
  </div>
</div>
