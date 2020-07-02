---
title: "Fundamentos"
linkTitle: "Fundamentos"
weight: 2
description: >
  Aprenda as partes mais importantes do Regolith primeiro.
---

Embora abordemos tudo com mais detalhes em outras áreas da documentação, esta página cobre os princípios básicos.

## A Tecla Super

A maioria das combinações de teclas que você usará com o Regolith começa com a tecla <span class="badge badge-warning">super</span>.  Essa tecla normalmente diz "WIN" ou possui um logotipo da MS Windows.  Em um Mac é a tecla Command <span class="badge badge-warning">⌘</span>.  Daqui para frente, essa tecla será chamada simplemente de <span class="badge badge-warning">super</span>, mas lembre-se de que você pode alterar para qualquer botão físico <span class="badge badge-warning">super</span> é mapeado nas suas configurações, se você escolher.

## Inicializadores

O Regolith fornece vários inicializadores como a principal maneira de interagir com seu sistema.  Cada um desses inicializadores tem uma aparência consistente, e fornece acesso a uma entidade específica.  Inicializador padrão para aplicações <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">space</span></span>, comandos <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">shift</span> <span class="badge badge-warning">space</span></span>, notificações <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">n</span></span>, janelas <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">ctrl</span> <span class="badge badge-warning">space</span></span>, e arquivos <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">alt</span> <span class="badge badge-warning">space</span></span>.

### Iniciar uma aplicação

Após o login, você estará em uma tela em branco com a barra na parte inferior e alguns atalhos de teclado à direita.  Para iniciar uma aplicação, pressione <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">space</span></span> e um menu será apresentado com todas as aplicações instaladas no sistema.  Se você começar a digitar o nome da aplicação que você deseja iniciar, a lista será filtrada para apenas nomes correspondentes.  Você também pode rolar pela lista com as teclas de seta do teclado.

<img class="shadow m-5" src="../screenshot-launcher.png" width="640px"/>

### Navegar para uma janela

Para dar foco a uma aplicação em execução, a combinação de teclas <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">ctrl</span> <span class="badge badge-warning">space</span></span> pode ser usada para mostrar uma caixa de diálogo de todas as janelas em execução.  Basta simplesmente selecionar a janela desejada e o sistema vai para a área de trabalho dessa janela e seta o seu foco.

<img class="shadow m-5" src="../regolith-screenshot-window-nav2.png" width="640px"/>

### Encontrar e iniciar um arquivo

Buscar por um arquivo específico no seu computador pode ser feito de várias maneiras.  O Regolith fornece uma caixa de diálogo de pesquisa de arquivos com <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">alt</span> <span class="badge badge-warning">space</span></span> para procurar rapidamente e opcionalmente carregar um arquivo com sua aplicação padrão.  Se o caminho do arquivo exceder a largura da caixa de diálogo, <span class="text-nowrap"><span class="badge badge-warning">alt</span> <span class="badge badge-warning">.</span></span> ativará a justificação de texto.  Pressionar enter em uma seleção fará com que o arquivo seja chamado com o comando <code>xdg-open</code>.

<img class="shadow m-5" src="../regolith-file-search.png" width="640px"/>

### Terminal

O terminal é uma aplicação especial que possui sua própria combinação de teclas, <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">enter</span></span>.

### Navegador

O navegador padrão também é especial e pode ser inicializado com <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">shift</span> <span class="badge badge-warning">enter</span></span>.

## Sair de um aplicativo

<span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">shift</span> <span class="badge badge-warning">q</span></span> vai fechar a aplicação focada.  Para aplicações que se comportam mal, <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">alt</span> <span class="badge badge-warning">q</span></span> forçará o encerramento da aplicação focada, mas note que todos os dados não salvos provavelmente serão perdidos.

## Alternando áreas de trabalho

A principal maneira de gerenciar como as aplicações ocupam a tela é pelo uso de áreas de trabalho.  Uma área de trabalho é essencialmente um grupo de zero ou mais aplicações as quais apresentam janelas no mesmo monitor físico.  Os usuários podem trocar áreas de trabalho para "ganhar" mais espaço para as aplicações ocuparem.  Janelas podem ser movidas pelas áreas de trabalho.  Áreas de trabalho podem estar vinculadas a um monitor ou serem movidas para outros conforme desejado.  Para alternar áreas de trabalho, mantenha pressionada a tecla <span class="badge badge-warning">super</span> e pressione uma das teclas numéricas.  Isso irá navegar para a área de trabalho.  Se existir alguma janela em uma determinada área de trabalho, ela será exibida na barra como ativa. Portanto, consultando a barra o usuário pode saber em quais áreas de trabalho estão aplicações ativas.

Áreas de trabalho também podem ser paginadas para frente e para trás por <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">tab</span></span> e <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">shift</span> <span class="badge badge-warning">tab</span></span>.

## Configurando o sistema

O app `Configurações` (também conhecido como `gnome-control-center`) é a interface principal para tarefas comuns, como alterar o papel de parede da área de trabalho, configurar a wifi e o bluetooth, configurar associações de aplicações e configurar usuários.  Esse app pode ser inicializado por <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">c</span></span>.

<img class="shadow m-5" src="../regolith-control-panel.png" width="640px"/>

## Leitura adicional

Mais combinações de teclas estão listadas no <code>Remontoire</code>, a aplicação de atalhos.  Esse app é carregado automaticamente na primeira sessão, mas não em logins sucessivos.  A janela pode ser alternada a qualquer momento clicando no ícone de círculo <span class="badge badge-warning">i</span> na barra, ou pressionando <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">shift</span> <span class="badge badge-warning">?</span></span>.
