---
title: "Configuração"
linkTitle: "Configuração"
weight: 3
description: >
  Faça alterações na aparência e no comportamento do Regolith.
---

## Papel de parede

O papel de parede pode ser modificado via `Configurações`, ou <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">c</span></span> indo na tab de `Plano de fundo` e selecionando a imagem ou cor preferida.

<img class="shadow m-5" src="../regolith-screenshot-settings-wallpaper.png" width="640px"/>

## Indicadores da barra de status

Indicadores de status como carga da CPU, data e hora, notificações, previsão do tempo e outras informações do sistema podem ser adicionados ou removidos pela instalação de pacotes.  Por exemplo, para mostrar um indicador de status da bateria do seu laptop, simplesmente rode `sudo apt install i3xrocks-battery` e então atualize a sessão.  Para encontrar quais indicadores estão disponíveis, rode `apt search ^i3xrocks-` ou busque por "i3xrocks-"  na GUI do seu gerenciador de pacotes, como o [Synaptic](https://help.ubuntu.com/community/SynapticHowto).  Saiba mais sobre a configuração de indicadores de status nesse HowTo.

<img class="shadow m-5" src="../regolith-screenshot-synaptic-search.png" width="480px"/>

## Looks

Cores, papel de parede, layout de janela e da barra, e outros fatores visuais são agrupados no Regolith e são chamados de "looks".  Os Looks fornecem uma maneira simples de alterar toda a aparência da área de trabalho com alguns comandos.  No momento, a aparência só pode ser configurada pela linha de comando, mas existe um script que gerencia os detalhes para você.  Como os indicadores da barra de status, os "looks" são empacotados, instalados e removidos como qualquer outro pacote de software.  Por convenção, os pacotes de Look usam o seguinte formate de nomenclatura `regolith-look-<nome>`.  `apt` ou um gerenciador de pacotes GUI pode ser usados para buscar looks disponíveis.  A ferramenta `regolith-look` pode ser usada para mudar os looks e atualizar a sessão ativa com o look selecionado.  Aqui um exemplo que muda para o look `cahuella` que é fornecido por padrão no Regolith 1.3:

```bash
$ apt search ^regolith-look-
...
regolith-look-cahuella/bionic,now 2.4.9 amd64
...
$ sudo apt install regolith-look-cahuella
$ regolith-look set cahuella
$ regolith-look refresh
```

## Combinações de teclas

A alteração mais comum de combinação de teclas é a tecla super.  O Regolith usa o Xresources como a fonte canônica da verdade para as configurações, que são lidas por vários componentes da interface do usuário.  A tabela de teclas do Xresource aberta para configuração do usuário pode ser encontrada aqui. Para mudar a combinação padrão do super da tecla windows para alt, adicione as seguintes linhas ao arquivo `~/.config/regolith/Xresources`:

```bash
i3-wm.mod: Mod1
i3-wm.alt: Mod4
```

Para alterar outras combinações de teclas, é necessário criar uma cópia do usuário do arquivo de configuração do i3.  Veja o [tutorial de preparo de configurações](../../howto/stage-configs) para saber mais.

Nota: O GNOME também possui seu próprio conjunto de combinações de teclas.  Quando a sessão do Regolith é inicializada pela primeira vez, as combinações de teclas conflitantes do GNOME são removidas das configurações do usuário.  As combinações de teclas do GNOME podem ser gerenciadas em `Configurações`.

<img class="shadow m-5" src="../regolith-screenshot-settings-keybindings.png" width="640px"/>

## Quase todo o resto

`Configurações` ou gnome-control-panel como também é conhecido, é a ferramenta para configurar localidade, data, monitor, rede e várias outras configurações.  Inicie-o pelo inicializador de aplicativos com <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">space</span></span>, digite 'configurações', e aperte enter para iniciar o app app.  Ou, a combinação de tecla direta é <span class="text-nowrap"><span class="badge badge-warning">super</span> <span class="badge badge-warning">c</span></span>.

## Leitura adicional

Para aprofundar, vá até a seção sobre [Customização](../../customize), encontre quais [HowTos](../../howto) estão disponíveis, ou leia a [referência do Xresource](../../reference/xresources).  Torne-se um usuário avançado do i3 lendo o [guia do usuário](https://i3wm.org/docs/userguide.html).
