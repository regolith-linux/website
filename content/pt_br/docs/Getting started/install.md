---
title: "Instalação"
linkTitle: "Instalação"
weight: 1
description: >
  Instale o Regolith no seu computador.
---

Baseado no seu método de instalação preferido, siga uma das duas seções a seguir para instalar o Regolith.  Diferentemente das versões anteriores do Regolith, as instalações de PPA e ISO resultam em diferentes configurações.  A instalação do PPA favorece a coexistência com a área de trabalho Ubuntu existente, enquanto a versão ISO otimiza para menos utilização de recursos.  Especificamente, a instação ISO é aproximadamente 1Gb menor e o uso de RAM na inicialização é reduzido em cerca de 200Mb em comparação à instalação PPA.

## Opção 1: Instalador Ubuntu

1. Baixe uma imagem ISO do [Regolith R1.4](https://github.com/regolith-linux/regolith-desktop/releases/tag/R1.4.1) <i class="fas fa-cloud-download-alt"></i> e então use uma ferramenta de instalação do sistema operacional como o USB Creator, para escrever o arquivo baixado em um dispositivo USB.  Aqui estão os guias do Ubuntu para executar essa ação no [Windows](https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-windows#0), [Mac](https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-macos#0), e no [Ubuntu](https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-ubuntu#0).
2. Reinicie o computador e selecione a inicialização a partir da unidade flash USB.
3. Instale ou execute o ambiente ativo fornecendo informações quando solicitadas durante o processo de instalação.  Veja [esse tutorial](https://tutorials.ubuntu.com/tutorial/tutorial-install-ubuntu-desktop) para aprender mais sobre o processo de instalação.
4. Quando solicitado, reinicie o computador e faça login no seu novo ambiente Regolith!

## Opção 2: PPA

1. Veja abaixo sobre [fontes PPA](#fontes-ppa), e adicione a PPA escolhida ao seu sistema:
<pre>
$ sudo add-apt-repository ppa:regolith-linux/release
</pre>
2. Instale o pacote do Regolith desktop:
<pre>
$ sudo apt install regolith-desktop
</pre>
3. (Opcional) instale indicadores de status (padrão no Regolith 1.3)
<pre>
$ sudo apt install i3xrocks-net-traffic i3xrocks-cpu-usage i3xrocks-time
$ sudo apt install i3xrocks-battery # for laptops
</pre>
4. Reinicie o computador, e ao logar, selecione a sessão "Regolith" no menu da engrenagem (⚙️):

![Tela de login do Ubuntu](/regolith-screenshot-login.png)

A partir desse ponto, prossiga para a próxima seção, [configuração](../configuration) para saber mais sobre as mudanças mais comuns que as pessoas gostam de fazer no Regolith.

## Atualizações

### Regolith 1.3 -> Regolith 1.4

O PPA `ppa:regolith-linux/release` está atualmente hospedando os pacotes da versão 1.4.1 do Regolith.  Para atualizar um sistema existente para a versão 1.4.1, atualize o gerenciador de pacotes Regolith para a PPA `release`:

```bash
$ apt policy | grep regolith
# Algumas informações com URLs vão ser retornadas.  Assumindo que http://ppa.launchpad.net/regolith-linux/release/ubuntu é no retornado:
$ sudo add-apt-repository ppa:regolith-linux/release
$ sudo apt update && sudo apt dist-upgrade
$ sudo apt install i3xrocks-net-traffic i3xrocks-cpu-usage i3xrocks-time #considere também i3xrocks-battery i3xrocks-memory i3xrocks-weather
```

Após executar a atualização, efetue o login novamente no seu sistema.  No entanto, se você preparou o seu próprio arquivo de configuração do i3 ou a raiz do Xresources, leia abaixo a seção `Atualizando com customizações`.

### Regolith 1.0 - 1.2 -> Regolith 1.4

Para atualizar do Regolith 1.0 - 1.2, a URL do PPA deve ser alterada e, em seguida, novas versões de pacotes serão aplicadas pelo gerenciador de pacotes:
```bash
$ sudo add-apt-repository --remove ppa:kgilmer/regolith-stable
$ sudo add-apt-repository ppa:regolith-linux/release
$ sudo apt update && sudo apt dist-upgrade
```
Depois de executar essas etapas, você precisará deslogar e logar novamente.

### Atualizando com customizações 

Ao atualizar de uma versão major ou minor (ex.: 1.2 para 1.3), geralmente ocorre de os novos valores Xresources e outros arquivos de configuração serem atualizados.  Xresource existente e arquivos de configuração como o arquivo de configuração do i3 vão precisar ser atualizados para que a atualização funcione corretamente.  Se você personalizou qualquer arquivo de configuração do Regolith ou criou um arquivo Xresource independente (`~/.Xresources-regolith`), talvez seja necessário atualizar esses arquivos para levar em consideração os arquivos atualizados.  Uma abordagem simples para fazer isso é movê-los para outro lugar, executar a atualização e reintegrar quaisquer personalizações desejadas nos novos arquivos:

```bash
$ mkdir ~/regolith-backup
$ mv ~/.Xresources-regolith ~/regolith-backup
$ mv ~/.config/regolith ~/regolith-backup
```

Depois que essas etapas forem executadas, logar novamente deve resultar em uma instância "em estoque" do Regolith.  A partir daí, quaisquer mudanças desejadas para serem reintegradas podem ser feitas editando as novas versões dos arquivos de configuração do Regolith que existem no diretório `/etc/regolith`.

### Monificações nos arquivos `/etc/regolith/...`

Se você pegou os atalhos e modificou manualmente os arquivos pertencentes ao `root` em `/etc/regolith` ou em outro local, a ferramenta de empacotamento pode não atualizar os arquivos, nem mencionar que arquivos obsoletos foram deixados.  Mesmo removendo o pacote via `apt remove ...` pode não resultar em um sistema limpo.  Nesse caso, use o comando purge para remover o pacote e excluir manualmente os arquivos restantes.  Por exemplo, para limpar o arquivo de configuração do i3:

```bash
$ sudo apt purge regolith-i3-gaps-config
$ sudo rm -Rf /etc/regolith/i3 # certifique-se de fazer backup de quaisquer alterações importantes 
$ sudo apt install regolith-i3-gaps-config
```

### Resolução de problemas

#### Blocos ausentes após a atualização

O Regolith 1.4 altera a maneira com a qual blocos são instalados e configurados.  Essa alteração é necessária para suportar de maneira limpa a arquitetura `arm64` e simplificar a troca de componentes como o subsistema de notificação.  A parte do 1.4, os blocos são instalados pelo gerenciador de pacotes.  Veja [esse tutorial](../../howto/add-remove-blocklets) sobre como adicionar e configurar blocos.

## Atualizando o Ubuntu

A atualização do Ubuntu 18.04, 18.10, 19.04, ou 19.10 para o 20.04 requer que o PPA do Regolith seja adicionado novamente assim que a atualização do Ubuntu for concluída.

1. Se a sessão padrão do Ubuntu não estiver instalada, instale-a:<br/>`$ sudo apt install ubuntu-session`.  (Se você já estiver instalado, esse comando não causará danos.)
2. Execute a atualização para 20.04.
3. Após a reinicialização, efetue o login na sessão do Ubuntu, não do Regolith.
4. Adicione o PPA do Regolith, pois o processo de instalação removeu os PPAs::<br/>`$ sudo add-apt-repository ppa:regolith-linux/release`
5. Atualize o Regolith para a versão mais recente:<br/>`$ sudo apt upgrade && sudo apt install regolith-desktop`
6. Reinicie, e agora selecione a sessão Regolith na tela de login.

NOTA: Alguns usuários relataram que o `regolith-desktop` é desinstalado automaticamente durante a atualização.  Se isso acontecer, simplesmente execute `sudo apt install --reinstall regolith-desktop` após a atualização ser concluída, para restaurar a sessão de área de trabalho do Regolith.

## Reinstalação

Caso o ambiente desktop do Regolith fique corrompido ou não inicializável, siga as etapas para redefini-lo.  Nenhum arquivo de usuário será removido como parte deste processo:

1. Logue na sessão de stock do Ubuntu.  Se essa sessão não está disponível, instale-a com `sudo apt install ubuntu-session`.  Se você não conseguir fazer o login, digite <span class="text-nowrap"><span class="badge badge-warning">ctrl</span> <span class="badge badge-warning">alt</span> <span class="badge badge-warning">F2</span></span> para acessar um TTY.  Após instalar o `ubuntu-session`, você terá a opção de selecionar o tipo de sessão `Ubuntu` na tela de login.
2. Desinstale o Regolith de dentro da sessão Ubuntu:
```bash
$ sudo apt purge regolith-*
$ sudo apt autoremove
$ rm -Rf ~/.config/regolith/flags
```
3. Verifique se nenhum pacote regolith ainda está instalado com `apt list --installed | grep -i regolith`.  O comando não deve retornar nenhum pacote.  Se isso acontecer, desinstale-os manualmente com `sudo apt purge <package>`.
4. Reinstale o Regolith:
```
$ sudo apt install regolith-desktop
```
5. Reinicie o computador e, ao fazer login, selecione a sessão "Regolith" no menu da engrenagem.  Neste ponto, você pode remover ou manter o `ubuntu-session`.

## Desinstalação do `regolith-desktop`

Simplesmente siga essas etapas para remover o Regolith do seu sistema:

1. Saia da sessão Regolith e entre na sessão padrão do Ubuntu.
2. Abra um terminal e execute: 
```bash
$ sudo apt purge regolith-desktop && sudo apt autoremove
``` 
3. Agora, remova o PPA:  
```bash
$ sudo add-apt-repository --remove ppa:regolith-linux/release
```
4. Para restaurar suas configurações do GNOME, execute: 
```bash 
$ source ~/.regolith-gnome-backup
```
5. Agora você pode excluir com segurança o diretório `~/.config/regolith`.

## Fontes PPA

Existem 4 fontes para pacotes Regolith.  O PPPA `release` é recomendado para a maioria dos usuários, mas algum outro pode ser melhor para você com base nas suas necessidades. Aqui está uma descrição de cada PPA.

| Nome | PPA URI | Frescor   | Estabilidade | Descrição |
|------|---------|-----------|--------------|-----------|
| Unstable | <span class="text-nowrap">`ppa:regolith-linux/unstable`</span> | <span class="badge badge-primary">Muito Alto</span> | <span class="badge badge-secondary">Baixa</span> | O PPA `unstable` é recomendado para desenvolvedores de projetos ou qualquer pessoa que esteja confortável com resolução de problemas do seu próprio sistema e não se importa com alguns problemas de tempos em tempos. |
| Stable | `ppa:regolith-linux/stable` | <span class="badge badge-primary">Alto</span> | <span class="badge badge-secondary">Média</span> | O PPA `stable` é para aqueles que gostariam das últimas funcionalidades, mesmo entre lançamentos oficiais. |
| Release | <span class="text-nowrap">`ppa:regolith-linux/release`</span> | <span class="badge badge-primary">Baixo</span> | <span class="badge badge-secondary">Alta</span> | O PPA `release` provê correção de bugs quando eles ocorrem e atualização de funcionalidades após o lançamento. |
| r1.3 | `ppa:regolith-linux/r1.3` | <span class="badge badge-primary">Muito Baixo</span> | <span class="badge badge-secondary">Muito Alta</span> | O `r1.3` PPA está lacrado com o lançamento do 1.3 e não vai ser atualizado, exceto para correção de bugs críticos. |

## Suporte ARM

Os pacotes Regolith são construídos para as arquiteturas `i386`, `amd64`, e `arm64`.  Um instalador independente não está disponível para sistemas baseados em ARM, como o Raspberry Pi, no entanto, o Regolith pode ser instalado via PPA em um sistema Ubuntu existente.  [Veja acima](#opcao-2-ppa) sobre a instalação do Regolith via PPA.
