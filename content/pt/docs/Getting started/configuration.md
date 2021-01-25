---
title: "Configuração"
linkTitle: "Configuração"
weight: 4
description: >
  Faça alterações na aparência e no comportamento do Regolith.
---

## Papel de parede

O papel de parede pode ser modificado via Configurações, ou {{< keys "super,c" >}}, indo na tab de Plano de fundo e selecionando a imagem ou cor preferida.

{{< img "images/regolith-screenshot-settings-wallpaper.png" "The background selection in the Settings app">}}

O Papel de parede também pode ser configurado no [dotfiles](https://en.wikipedia.org/wiki/Hidden_file_and_hidden_directory) para aqueles que preferem gerenciar configurações baseado em arquivo ao invés de GSettings.

Independentemente de qual estilo você prefira, você pode visitar a [documentação mais detalhada]({{< ref "/docs/howtos/configure-wallpaper.md" >}}) para informações adicionais.

## Indicadores da Barra de Status

Indicadores de status como carga da CPU, data e hora, notificações, clima e outras informações do sistema podem ser adicionados ou removidos instalando pacotes. Por exemplo, para mostrar um indicador de status para a bateria do notebook, simplesmente execute `sudo install i3xrocks-battery` e atualize a sessão usando `regolith-look update`. Para encontrar quais indicadores estão disponíveis, execute `apt search ^i3xrock-` ou procure por `i3xrock-` no seu gerenciador de pacotes favorito GUI, como o [Sináptica](https://help.ubuntu.com/community/SynapticHowto). Há [mais documentação disponível]({{< ref "/docs/howtos/add-remove-blocklets.md" >}}) para configurar indicadores de status, também chamados de "blocklets".

{{< img "images/regolith-screenshot-synaptic-search.png" "Searching for blocklets in Synaptics" >}}

## Aparências

As cores, o papel de parede, os layouts de janela e da barra, e outros fatores visuais são agrupados no Regolith e chamados de "aparências". Aparências fornecem um jeito simples de mudar a aparência inteira do computador com poucos comandos. Like status bar indicators, looks are packaged and are installed and removed like any other software package. By convention, Look packages use the following naming format `regolith-look-<name>`. `apt` or a GUI package manager can be used to search for available looks. The tool `regolith-look` can be used to change looks and refresh the active session with the selected look. Here's an example that switches to the `cahuella` look that shipped by default in Regolith 1.3:

```console
$ apt search ^regolith-look-
[...]
regolith-look-cahuella/bionic,now 2.4.9 amd64
[...]
$ sudo apt install regolith-look-cahuella
$ regolith-look set cahuella
$ regolith-look refresh
```

Aparências instaladas também podem ser definidas através da Look Dialog, ativada através do comando {{< keys "super,alt,l" >}}.

## Teclas de Atalho

A alteração mais comum nos atalhos é da tecla {{< keys "super" >}}. O Regolith usa `Xresources` como fonte da verdade para as configurações, que são lidas por vários componentes da interface do usuário. A tabela de teclas do `Xresources` disponível para o usuário configurar [pode ser encontrada aqui]({{< ref "xresources" >}}). Para alterar o padrão {{< keys "super" >}} da tecla "windows" para "alt", adicione a seguinte linha ao arquivo `~/. onfig/regolith/Xresources`:

```toml
i3-wm.mod: Mod1
i3-wm.alt: Mod4
```

Para alterar outros atalhos mais avançadas é necessário criar uma cópia de usuário do arquivo de configuração i3. Chamamos este processo de ["staging"]({{< ref "/docs/howtos/stage-configs" >}}).

**Nota**: O GNOME também tem seu próprio conjunto de atalhos. Quando a sessão do Regolith é inicializada pela primeira vez, os atalhos conflitantes de GNOME são removidos das configurações do usuário. Os atalhos do GNOME podem ser gerenciados em Configurações.

{{< img "images/regolith-screenshot-settings-keybindings.png" "GNOME keybindings in the settings dialog">}}

## Comportamento da Janela

O Regolith usa uma variante do gerenciador de janelas i3 chamada [`i3-gaps`](https://github.com/Airblader/i3). Ele controla como as janelas são desenhadas, como as teclas de atalho são configuradas, alguns aplicativos de início e outros detalhes. Por padrão, o arquivo de configuração do Regolith para i3 está localizado em `/etc/regolith/i3/config`.

## Quase todo o resto

Configurações ou `gnome-control-center` como também é conhecido, é a ferramenta para configurar idioma, data, telas, rede e várias outras configurações. Inicie-o pressionando {{< keys "super,space" >}}, digite `configurações`, e clique Enter para abrir o aplicativo. O atalho direto para o aplicativo é {{< keys "super,c" >}}.

## Leitura adicional

Para aprofundar, vá até a seção sobre [Customização]({{< ref "customize" >}}), encontre quais [Howtos]({{< ref "howtos" >}}) estão disponíveis, ou leia a [referência do Xresource]({{< ref "docs/Reference/xresources.md" >}}). Torne-se um usuário avançado do i3 lendo o [guia do usuário](https://i3wm.org/docs/userguide.html).
