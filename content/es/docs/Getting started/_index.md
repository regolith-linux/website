---
title: "Primeros Pasos"
linkTitle: "Primeros Pasos"
weight: 2
description: >
  Sumario de los métodos de instalación para Regolith.
---

Esta sección contiene la información necesaria para lograr correr Regolith en tu computadora. Hay dos maneras principales de instalar Regolith; a traves de un instalador basado en Ubuntu y a traves de un Personal Package Archive (PPA). Cualquiera de esos dos metodos tendrá como resultado esencialmente la misma experiencia de usuario, a pesar de que la instalación a traves del instalador de Ubuntu resultara en una colección de paquetes que es diferente a la de una instalación vainilla de Ubuntu. De todas maneras agregando y eliminando paquetes especificos, se puede configurar un sistema vainilla de Ubuntu.

## Pre-requisitos

### Instalador de Ubuntu

* Una [computadora moderna](https://help.ubuntu.com/community/Installation/SystemRequirements) que pueda arrancar desde un dispositovo USB.
* Espacio libre en el disco local. El instalador le permitirá elegir entre administrar particiones existentes o instalar en un volumen vacio.
* Una conexión a internet para instalar actualizaciones durante y luego de la instalación.
* Un monitor con al menos una resolución de VGA (1024 x 768). Regolith está optimizado para pantallas FHD (1920 x 1080).
* Una memoria USB vacia con al menos 4Gb de espacio de almacenamiento.

### PPA

* Una instalación de Ubuntu previa con privilegios de administrador, versión 18.04 o 20.04.
* 100Mb de espacio libre para instalar el entorno de escritorio Regolith.
* Una conexión de internet para instalar actualizaciones durante y luego de la instalación.

## Decidiendo el Método de Instalación

Si ya tienes un sistema Ubuntu de una versión soportada, entonces agregar agregar Regolith a traves de su PPA es el método más rápido y menos disruptivo. El método del instalador de Ubuntu es mejor para empezar de cero, instalarlo en una máquina virtual, o simplemente para asegurarse de que cualquier software ya existente no esté en conflicto con Regolith. Algunos usuarios han tenido algunos problemas logrando que Regolith corra de manera correcta con otros entornos de escritorio derivados de Ubuntu. Instalando una instancia nueva puede dejar de lado esos potenciales problemas.