---
title: "Primeiros passos"
linkTitle: "Primeiros passos"
weight: 2
description: >
  Resumo dos métodos de instalação do Regolith.
---

Esta seção contém as informações necessárias para que o Regolith funcione em um computador. Existem duas formas principais de instalar o Regolith; através de um instalador baseado em Ubuntu e através de um Pacote Pessoal (PPA). Qualquer um desses métodos resultará essencialmente na mesma experiência de usuário, embora a instalação pelo instalador do Ubuntu resulte em uma seleção de pacotes diferente da instalação do Ubuntu vanilla. Porém, adicionando e removendo pacotes específicos, um sistema Ubuntu vanilla pode ser configurado.

## Pré-requisitos

### Instalador Ubuntu

- Um [computador moderno](https://help.ubuntu.com/community/Installation/SystemRequirements) que pode inicializar a partir de um flash drive USB.
- Espaço livre em uma unidade local. O instalador permitirá gerenciar as partições existentes ou instalar em um volume vazio.
- Uma conexão com a internet para instalar as atualizações durante e após a instalação.
- Um monitor com uma resolução mínima de VGA (1024 x 768). O Regolith é otimizado para telas FHD (1920 x 1080).
- Uma unidade flash USB vazia com pelo menos 4 Gb de espaço de armazenamento.

### PPA

- Uma instalação do Ubuntu com direitos de administrador. As versões suportadas são {{< blocks/supported_versions >}}.
- 100MB de espaço de armazenamento livre para instalar o ambiente de desktop do Regolith (dependendo das seleções dos pacotes).
- Uma conexão com a internet para instalar as atualizações durante e após a instalação.

## Decidindo o método de instalação

Se você já possui um sistema Ubuntu de uma versão suportada, adicionar o Regolith via PPA é o método mais rápido e menos disruptivo. O método de instalação do Ubuntu é melhor para começar do zero, instalando em uma máquina virtual, ou apenas garantindo que qualquer software não esteja em conflito com o Regolith. Alguns usuários têm alguns problemas fazer o Regolith funcionar corretamente com outro ambiente desktop derivado do Ubuntu. Instalar uma instância nova pode contornar esses possíveis problemas.
