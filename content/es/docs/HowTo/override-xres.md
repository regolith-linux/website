---
title: "Sobreescribir Xresources"
weight: 1
description: >
  Aprende cómo montar copias de usuario de los archivos de configuración de Regolith.
---

Regolith se basa en el sistema Xresource para proveer una interfaz de configuración consolidada. Cambiando los valores de Xresource, Regolith puede ser personalizado de maneras tales cómo actualizar la interfaz de usuario, especificar comportamientos personalizados, o definir un formato específico para el reloj.

{{% pageinfo %}}
En Regolith, los valores Xresource pueden ser cambiados a traves de dos métodos: suministrando tus propios archivos Xresource, y sobreescribiendo los ya existentes valores de Xresource. El primer acercamiento es fuertemente recomendado, ya que hace que actualizar a nuevas versiones de Regolith sea menos propenso a romperse. Si copias el árbol completo de Xresource, necesitarás integrar cualquier cambio destructivo en versiones futuras a mano.
{{% /pageinfo %}}


## Inicialización

Cuando una sesión Regolith es iniciada, los Xresources son cargados en el siguiente orden:

| Archivo | Opcional | Notas |
| ---- | -------- | ----- |
| `~/.Xresources` | S | Dispuesto para configuraciones no-Regolith |
| `~/.Xresources-regolith` | S | Una sobreescritura global para reemplazar todas las configuraciones Regolith |
| `/etc/regolith/styles/root` | N | El archivo por Xresource por defecto en Regolith si `~/.Xresources-regolith` no existe |
| `~/.config/regolith/Xresources` | S | Aplica sobreescrituras específicas a los valores por defecto de Xresource |

Se recomienda usar `~/.config/regolith/Xresources` para personalizaciones ya que requiere la especificación de configuraciones no redundantes, y es más facil de mantener en le tiempo.

## Determinando que valores pueden ser cambiados

La herramienta `xrdb` puede ser usada para listar los valores Xresource existentes. Ver [aquí para una tabla de los valores existentes](../../reference/xresources) en la publicación R1.4.1 .  Ejemplo:

```bash
$ xrdb -query 
...
gnome.icon.theme:	Moka
gnome.terminal.font:	JetBrains Mono 12
gnome.terminal.scrollbar:	never
gnome.wallpaper:	/usr/share/backgrounds/ESP_016895_1525_desktop.jpg
gnome.wm.theme:	Ayu-Mirage-Dark
...
```

## Ejemplos
Note que los comandos presentados debajo concatenan texto a un archivo. Entonces, ejecutar el comando más de una vez resultará en líneas duplicadas en el archivo.

### Ejemplo - Actualiza la IU para Pantallas con DPI Alto

Usando el archivo de sobreescritura `~/.config/regolith/Xresources`, solo necesitaremos especificar los valores que queremos cambiar. La herramienta `xrdb` puede ser usada para determinar que valores están configurados actualmente.

1. Crea o agrega el siguiente valor a tu archivo `~/.config/regolith/Xresources`:
```bash
Xft.dpi: 192
```
2. Recarga la configuración Xresource:
```bash
$ regolith-look refresh
```
3. Abre una nueva terminal para ver si el cambio tomó efecto.

<sub>192 es solo un valor de ejemplo, por favor ajustalo cuando sea necesario.</sub>

### Ejemplo - Cambia la posición de la barra i3

```bash
$ xrdb -query | grep position
i3-wm.bar.position:	bottom
$ echo "i3-wm.bar.position:	bottom" >> ~/.config/regolith/Xresources
$ regolith-look refresh
```

### Ejemplo - Cambia el Tema GTK

```bash
$ xrdb -query | grep gtk
gnome.gtk.theme:	Ayu-Mirage-Dark
$ echo "gnome.gtk.theme:	Adwaita" >> ~/.config/regolith/Xresources
$ regolith-look refresh
```

### Ejemplo - Habilita la Bandeja de Sistema

```bash
$ echo "i3-wm.bar.trayoutput:	primary" >> ~/.config/regolith/Xresources
$ regolith-look refresh
```

### Ejemplo - Usa Alt en lugar de Win como Super

```bash
$ echo "i3-wm-mod: Mod1" >> ~/.config/regolith/Xresources
$ echo "i3-wm-alt: Mod4" >> ~/.config/regolith/Xresources
```

Entonces recarga i3 para que el cambio tome efecto.

### Ejemplo - Lanza `nm-applet` cuando se inicia i3

Algunos usuarios prefieren usar el programa `nm-applet` para configurar y gestionar sus redes inalámbricas. El archivo de configuración i3 puede ser actualizado para lanzar cualquier programa de manera arbitraria en el inicio. Pero, en lugar de copiar todo el archivo entero, podemos suministrar hasta 3 programas a traves de Xresources sin necesidad de cambiar el archivo de configuración i3. Para que esto funcione, también asegurate de que la bandeja de sistema esté habilitada (ver más arriba).

```bash
$ echo "i3-wm.program.1: /usr/bin/nm-applet"
```

Este cambio requiere que cierres la sesión y vuelvas a entrar para que el cambio surta efecto.

{{% pageinfo %}}
Regolith genera muchos de esos valores de un conjunto de definiciones canónicas. Vea [este leeme](https://github.com/regolith-linux/regolith-styles) para mas detalles.  Si te encuentras actualizando muchos valores, sería más conciso que en su lugar crearas tu propio aspecto.
{{% /pageinfo %}}

# Lectura Complementaria

Vea la [página de referencia para configuraciones](../../reference/configurations) para más detalles sobre los archivos de configuración en Regolith.
