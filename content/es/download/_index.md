---
title: "Descarga"
linkTitle: "Descarga"
weight: 20
menu:
  main:
    weight: 20
---
<section class="row td-box td-box--1 position-relative td-box--gradient td-box--height-auto">
	<div class="container text-center td-arrow-down">
		<span class="h4 mb-0">
<h1><i class="fas fa-cloud-download-alt ml-2 "></i> Descarga Regolith</h1>

<p>Regolith está disponible como una <b>ISO aislada</b> que puede ser instalada como un sistema operativo GNU/Linux completo, y como un "<b>personal package archive</b>" (PPA) que instala el escritorio Regolith en un sistema Ubuntu 18.04 o 20.04 ya existente. Esta pagina provee un comienzo rápido para instalaciones y actualizaciones pero hay <a href="../docs/getting-started/install">más disponible en la documentación</a>.</p>
</span>
	</div>
</section>


<div class="container">
  <div class="row">
    <div class="col-sm p-5">
				<h2><i class="fas fa-compact-disc"></i> ISO de Regolith Linux</h2>
				<p>
					Regolith puede ser instalado como un sistema operativo aislado, y es una buena opción para los siguientes escenarios:
					<ul>
						<li>Sistemas mínimos, pequeño tamaño de instalación, menos uso de RAM</li>
						<li>Una vez instalado, todos los paquetes por defecto están en buen estado</li>
						<li>Provee más impronta de Regolith</li>
					</ul>
				<a href="https://github.com/regolith-linux/regolith-desktop/releases/tag/R1.4.1">Descarga el ISO </a> y guardalo en una memoria USB para instalar o probar Regolith como sistema operativo. Para saber cómo, visita el <a class="text-warning"  href="https://tutorials.ubuntu.com/tutorial/tutorial-install-ubuntu-desktop">Tutorial del Instalador de Ubuntu</a>.</p>
				<div class="d-flex justify-content-center"><a class="btn btn-lg btn-secondary mr-3 mb-4" href="https://github.com/regolith-linux/regolith-desktop/releases/tag/R1.4.1">
      Descarga Regolith 1.4.1<i class="fas fa-cloud-download-alt ml-2 "></i></a><a class="btn btn-lg btn-primary mr-3 mb-4" href="{{< relref "/docs" >}}">
      Aprende Más <i class="fas fa-book-reader ml-2"></i></a></div>				
			</th>
    </div>
    <div class="col-sm p-5">
			<h2><i class="fas fa-download"></i> PPA del Escritorio Regolith</h2>
			<p>
					Regolith puede ser instalado en un sistema Ubuntu 18.04 o 20.04 ya existente agregando el PPA de Regolith e instalando el paquete <code>regolith-desktop</code>.  Las ventajas de Regolith via PPA:
					<ul>
						<li>Más compatibilidad con Ubuntu estándar</li>
						<li>Fácil interoperabilidad con otros entornos de escritorio instalados</li>
						<li>Mantiene la instalación del sistema existente</li>
						<li>Fácil de eliminar y volver a otros entornos de escritorio</li>
					</ul>
					Para instalar el Escritorio Regolith desde el PPA <code>release</code>:
					<pre class="border rounded p-2">
$ sudo add-apt-repository ppa:regolith-linux/release
$ sudo apt install regolith-desktop i3xrocks-net-traffic i3xrocks-cpu-usage i3xrocks-time</pre>
					Aprende más sobre <a href="https://help.ubuntu.com/community/Repositories/CommandLine#Adding_Launchpad_PPA_Repositories">agregar PPAs aquí</a>, y más sobre <a href="../docs/getting-started/install/#ppa-sources">los PPAs que Regolith provee aquí</a>.
				</p>
    </div>
  </div>
</div>
