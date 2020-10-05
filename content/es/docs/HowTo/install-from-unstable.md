---
title: "Actualizar los Paquetes Selectivamente"
weight: 15
description: >
  Instala o actualiza paquetes selectivamente desde el PPA unstable.
---

Esta página describe como configurar el sistema de paquetes para manejar de qué paquetes PPA vienen las actualizaciones.

Puedes habilitar el PPA `unstable` de Regolith agregandolo a tus fuentes apt:

```# add-apt-repository ppa:regolith-linux/unstable```

Es recomendado que habilites las actualizaciones selectivas del PPA unstable. Esto solo puede ser hecho configurando tus preferencias de apt para solo permitir instalaciones selectivas desde este PPA:

```bash
cat <<EOF >/etc/apt/preferences.d/regolith-unstable-updates
# Configura apt para permitir instalaciones selectivas de paquetes desde unstable Regolith
Package: *
Pin: release o=LP-PPA-regolith-linux-unstable
Pin-Priority: 400
EOF
```

Apt ahora va a usar estas preferencias y no actualizar paquetes desde la PPA unstable a menos que sea explicitamente hecho. Esto puede ser testeado con:

```# apt upgrade -s```

Ahora, por defecto, la instalación de un paquete vendrá del PPA primario configurado en la máquina. Como es visto por la política de apt-cache, hay una versión de este paquete disponible en unstable como también en la PPA release:

```bash
$ apt-cache policy i3xrocks-weather
i3xrocks-weather:
  Installed: (none)
  Candidate: 3.0.21-1
  Version table:
     3.0.29-1 400
        400 http://ppa.launchpad.net/regolith-linux/unstable/ubuntu focal/main amd64 Packages
     3.0.21-1 500
        500 http://ppa.launchpad.net/regolith-linux/release/ubuntu focal/main amd64 Packages
        500 http://ppa.launchpad.net/regolith-linux/stable/ubuntu focal/main amd64 Packages
```
Como sea, instalar el paquete va a traer del PPA release cuando no sea explicitamente instalado desde unstable:
```bash
$ apt install i3xrocks-weather 
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following NEW packages will be installed:
  i3xrocks-weather
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
Need to get 6,360 B of archives.
After this operation, 23.6 kB of additional disk space will be used.
Get:1 http://ppa.launchpad.net/regolith-linux/release/ubuntu focal/main amd64 i3xrocks-weather amd64 3.0.21-1 [6,360 B]
Fetched 6,360 B in 0s (14.0 kB/s)     
Selecting previously unselected package i3xrocks-weather.
(Reading database ... 302563 files and directories currently installed.)
Preparing to unpack .../i3xrocks-weather_3.0.21-1_amd64.deb ...
Unpacking i3xrocks-weather (3.0.21-1) ...
Setting up i3xrocks-weather (3.0.21-1) ...
```

Para instalar la versión del PPA unstable vas a necesitar definirlo de esta manera:

```bash
$ apt install -t focal i3xrocks-weather 
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following NEW packages will be installed:
  i3xrocks-weather
0 upgraded, 1 newly installed, 0 to remove and 42 not upgraded.
Need to get 6,920 B of archives.
After this operation, 22.5 kB of additional disk space will be used.
Get:1 http://ppa.launchpad.net/regolith-linux/unstable/ubuntu focal/main amd64 i3xrocks-weather amd64 3.0.29-1 [6,920 B]
Fetched 6,920 B in 1s (10.1 kB/s)           
Selecting previously unselected package i3xrocks-weather.
(Reading database ... 302563 files and directories currently installed.)
Preparing to unpack .../i3xrocks-weather_3.0.29-1_amd64.deb ...
Unpacking i3xrocks-weather (3.0.29-1) ...
Setting up i3xrocks-weather (3.0.29-1) ...
```
