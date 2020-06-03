---
title: "Télécharger"
linkTitle: "Télécharger"
weight: 20
menu:
  main:
    weight: 20
---
<section class="row td-box td-box--1 position-relative td-box--gradient td-box--height-auto">
	<div class="container text-center td-arrow-down">
		<span class="h4 mb-0">
<h1><i class="fas fa-cloud-download-alt ml-2 "></i> Télécharger Regolith</h1>

<p>Regolith est disponible sous forme d'<b>ISO autonome</b> qui peut être installée comme un système d'exploitation Linux à part entière, et sous forme de "<b>personal package archive</b>" (PPA) qui installe Regolith sur une installation existante d'Ubuntu 18.04 ou 20.04. Cette page fournit les instructions de base pour installer et mettre à jour Regolith rapidement. Une <a href="../docs/getting-started/install">documentation complète</a> est disponible.</p>
</span>
	</div>
</section>


<div class="container">
  <div class="row">
    <div class="col-sm p-5">
				<h2><i class="fas fa-compact-disc"></i> ISO Regolith Linux</h2>
				<p>
          Regolith peut être installé en tant que système d'exploitation à part entière. C'est un bon choix dans les cas de figure suivants :
					<ul>
						<li>Installation et espace disque minimal, utilisation de RAM réduite.</li>
						<li>Une fois installé, les paquets par défaut sont configurés correctement et sont dans un état connu.</li>
						<li>Plus de branding Regolith.</li>
					</ul>
				<a href="https://github.com/regolith-linux/regolith-desktop/releases/tag/R1.4.1">Téléchargez l'ISO</a> et écrivez-la sur une clé USB pour installer et tester Regolith en tant que système d'exploitation. Pour en savoir plus, visitez le <a class="text-warning"  href="https://tutorials.ubuntu.com/tutorial/tutorial-install-ubuntu-desktop">tutorial du l'installer Ubuntu</a>.</p>
				<div class="d-flex justify-content-center"><a class="btn btn-lg btn-secondary mr-3 mb-4" href="https://github.com/regolith-linux/regolith-desktop/releases/tag/R1.4.1">
      Téléchargez Regolith 1.4.1<i class="fas fa-cloud-download-alt ml-2 "></i></a><a class="btn btn-lg btn-primary mr-3 mb-4" href="{{< relref "/docs" >}}">
      En savoir plus <i class="fas fa-book-reader ml-2"></i></a></div>				
			</th>
    </div>
    <div class="col-sm p-5">
			<h2><i class="fas fa-download"></i>  PPA du bureau Regolith </h2>
			<p>
          Regolith peut être installé sur une installation existante d'Ubuntu 18.04 or 20.04 en ajoutant les PPA de Regolith et en installant le paquet <code>regolith-desktop</code>. Les avantages du PPA sont :
					<ul>
						<li>Plus de compatibilité avec Ubuntu</li>
						<li>Facilités pour basculer sur un autre environnement de bureau.</li>
						<li>Permet de conserver le système existant</li>
						<li>Facile à déinstaller afin de revenir à d'autres environnements de bureau.</li>
					</ul>
					Installation du bureau Regolith avec le PPA <code>release</code> :
					<pre class="border rounded p-2">
$ sudo add-apt-repository ppa:regolith-linux/release
$ sudo apt install regolith-desktop i3xrocks-net-traffic i3xrocks-cpu-usage i3xrocks-time</pre>
					Pour en savoir plus sur l'ajout de PPA <a href="https://help.ubuntu.com/community/Repositories/CommandLine#Adding_Launchpad_PPA_Repositories">c'est ici</a>, et davantage sur ce que les PPAs de Regolith contiennent <a href="../docs/getting-started/install/#ppa-sources">c'est par là</a>.
				</p>
    </div>
  </div>
</div>
