---
title: "Paquetes"
linkTitle: "Paquetes"
weight: 5
description: >
  Aprende como está compuesto Regolith.
---

El siguiente gráfico generado por `debtree` nos provee las relaciones de dependencia de los paquetes de Regolith y algunas de sus dependencias ascendentes más notables:

![Gráfico de Dependencias de Paquetes](/regolith-desktop-graph-l2.png)

## Fuente

### Paquetes

Los paquetes de Regolith están alojados en los PPA provistos por launchpad.net:

| PPA            | Descripción           | URL de Launchpad  |
|-------------------|-----------------|---|
| `ppa:regolith-linux/unstable`   | Paquetes preparados para pruebas de desarrolladores. | https://launchpad.net/~regolith-linux/+archive/ubuntu/unstable |
| `ppa:regolith-linux/stable`   | Paquetes que han sido probados pero que no han sido asignados a un release. | https://launchpad.net/~regolith-linux/+archive/ubuntu/stable |
| `ppa:regolith-linux/release`   | Paquetes provistos tales como en el release vigente de Regolith. | https://launchpad.net/~regolith-linux/+archive/ubuntu/release |
| `ppa:kgilmer/speed-ricer`   | Paquetes de propósito general de los cuales Regolith depende pero no están disponibles a traves de los repositorios de Ubuntu. | https://launchpad.net/~kgilmer/+archive/ubuntu/speed-ricer |

### Repositorios Git

El código fuente asociado con los paquetes de Regolith está alojado en [la organización Github de Regolith Linux](https://github.com/regolith-linux).

### ISOs Instaladoras

El instalador es generado usando la [herramienta Cubic](https://launchpad.net/cubic) y proveyendo el archivo ISO destino como subidas manuales a la organización Github de Regolith Linux. El [LEEME en `regolith-cubic-conf`](https://github.com/regolith-linux/regolith-cubic-config) tiene más detalles.

## Montaje

Los paquetes de Regolith pueden ser montados, firmados, y preparados desde el repositorio `regolith-builder`. Mira el [LEEME del proyecto](https://github.com/regolith-linux/regolith-builder) para más detalles.

## Δ de Paquetes entre Stock Ubuntu y Regolith Linux

Cuando instala Regolith a traves del PPA, el usuario tiene control y visibilidad sobre todos los cambios de paquetes a traves de su herramienta de instalación de paquetes de preferencia, probablemente `apt`,`dpkg`, o `synaptic`. Sin embargo, cuando instala Regolith a traves del instalador de Ubuntu, el usuario no ve qué paquetes son instalados como parte del proceso. Para disminuír el tamaño de la descarga del instalador, algunos paquetes fueron eliminados del instalador de Ubuntu.

### Regolith 1.2

Para Regolith 1.2, los siguientes paquetes fueron eliminados de Ubuntu stock:

* ubuntu-session
* libreoffice-*
* rythmbox-*

Por supuesto, cualquiera de esos paquetes pueden ser re-agregados por el usuario luego de la instalación usando una variedad de herramientas incluída la tienda de aplicaciones.

### Regolith 1.3

Para el release 1.3 de Regolith, los cambios de la base de referencia de Ubuntu están [documentados aquí](https://regolith-linux.org/docs/reference/releases/regolith-1.3-release-notes/#iso-generation).
