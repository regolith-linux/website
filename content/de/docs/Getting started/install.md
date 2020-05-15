---
title: "Installation"
linkTitle: "Installation"
weight: 1
description: >
  Installiere Regolith auf Deinem Computer.
---

Folgen Sie einem der beiden folgenden Abschnitte, um Regolith je nach der von Ihnen bevorzugten Installationsmethode zu installieren.  Im Gegensatz zu früheren Versionen von Regolith ergeben PPA- und ISO-Installationen unterschiedliche Konfigurationen.  Die PPA-Installation begünstigt die Koexistenz mit dem vorhandenen Ubuntu-Desktop, während die ISO-Version für eine geringere Ressourcenauslastung optimiert ist.  Konkret ist die ISO-Installation etwa 1 GB kleiner und die Kaltstart-RAM-Nutzung ist im Vergleich zur PPA-Installation um etwa 200 MB reduziert.

## Option 1: Ubuntu-Installationsprogramm

1. Laden Sie ein ISO-Image von [Regolith R1.4](https://github.com/regolith-linux/regolith-desktop/releases/tag/R1.4.1) <i class="fas fa-cloud-download-alt"></i> herunter und verwenden Sie dann ein Betriebssysteminstallationsprogramm wie USB Creator, um die heruntergeladene Datei auf ein USB-Gerät zu schreiben. Hier finden Sie Ubuntu-Anleitungen zur Durchführung dieser Aktion in [Windows](https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-windows#0), [Mac](https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-macos#0) und [Ubuntu](https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-ubuntu#0).
2. Starten Sie den Computer neu und wählen Sie das USB-Flash-Laufwerk, von dem gebootet werden soll.
3. Installieren oder starten Sie die Live-Umgebung, indem Sie Informationen bereitstellen, wenn Sie während des Setup-Prozesses dazu aufgefordert werden.  Siehe [dieses Lernprogramm](https://tutorials.ubuntu.com/tutorial/tutorial-install-ubuntu-desktop), um mehr über den Installationsprozess zu erfahren.
4. Wenn Sie dazu aufgefordert werden, starten Sie den Computer neu und melden Sie sich in Ihrer neuen Regolith-Umgebung an!

## Option 2: PPA

1. Siehe unten über [PPA-Quellen](#ppa-sources), und fügen Sie das von Ihnen gewählte PPA zu Ihrem System hinzu:
<pre>
$ sudo add-apt-repository ppa:regolith-linux/release
</pre>
2. Installieren Sie das Regolith-Desktop-Paket:
<pre>
$ sudo apt install regolith-desktop
</pre>
3. (Optional) Statusindikatoren als Standard in Regolith 1.4 installieren
<pre>
$ sudo apt install i3xrocks-net-traffic i3xrocks-cpu-usage i3xrocks-time
$ sudo apt install i3xrocks-battery # for laptops
</pre>
4. Starten Sie den Computer neu, und wählen Sie beim Einloggen die "Regolith"-Sitzung im Zahnrad-Menü (⚙️):

![Ubuntu Login Screen](/regolith-screenshot-login.png)

Von diesem Punkt aus fahren Sie bitte mit dem nächsten Abschnitt, [Konfiguration](../configuration) fort, um mehr über die häufigsten Änderungen zu erfahren, die Benutzer\*innen gerne an Regolith vornehmen.

## Aktualisierungen

### Regolith 1.3 -> Regolith 1.4

The Unstable PPA `ppa:regolith-linux/release` is currently hosting Regolith 1.4 Beta version packages.  To upgrade an existing system to the 1.4 Beta, update the package manager to source Regolith packages from the `stable` PPA:

```bash
$ apt policy | grep regolith
# Some info w/ URLs will be returned.  Assuming http://ppa.launchpad.net/regolith-linux/release/ubuntu is returned:
$ sudo add-apt-repository --remove ppa:regolith-linux/release # remove release PPA
$ sudo add-apt-repository ppa:regolith-linux/release
$ sudo apt update && sudo apt dist-upgrade
$ sudo apt install i3xrocks-net-traffic i3xrocks-cpu-usage i3xrocks-time #also consider i3xrocks-battery i3xrocks-memory i3xrocks-weather
```

After performing the update, log back in to your system.  However, if you have staged your own i3 config file or Xresources root, read the below section `Upgrading with Customizations`.

### Regolith 1.0 - 1.2 -> Regolith 1.4

To upgrade from Regolith 1.0 - 1.2, the PPA URL must be changed and then new package versions are applied by the package manager:
```bash
$ sudo add-apt-repository --remove ppa:kgilmer/regolith-stable
$ sudo add-apt-repository ppa:regolith-linux/release
$ sudo apt update && sudo apt dist-upgrade
```
After performing these steps, you'll need to log out and back again.

### Aktualisieren mit Anpassungen

Bei der Aktualisierung von einer Haupt- oder Nebenversion (z.B. 1.2 auf 1.3) ist es oft der Fall, dass neue Xresource-Werte und andere Konfigurationsdateien aktualisiert wurden.  Bestehende Xresource- und Konfigurationsdateien, wie z.B. die i3-Konfigurationsdatei, müssen aktualisiert werden, damit das Upgrade ordnungsgemäß funktioniert.  Wenn Sie irgendwelche Regolith-Konfigurationsdateien angepasst oder eine eigenständige X-Ressourcen-Datei (`~/.Xresources-regolith`) erstellt haben, müssen diese möglicherweise aktualisiert werden, um die aktualisierten Dateien zu berücksichtigen.  Ein einfacher Ansatz hierfür ist es, sie an einen anderen Ort zu verschieben, das Upgrade durchzuführen und dann alle gewünschten Anpassungen in die neuen Dateien zu reintegrieren:

```bash
$ mkdir ~/regolith-backup
$ mv ~/.Xresources-regolith ~/regolith-backup
$ mv ~/.config/regolith ~/regolith-backup
```

Sobald diese Schritte ausgeführt sind, sollte das erneute Anmelden zu einer Instanz im Auslieferungszustand von Regolith führen.  Von dort aus können alle Änderungen, die reintegriert werden sollen, durch Editieren der neuen Versionen der Regolith-Konfigurationsdateien, die im Verzeichnis `/etc/regolith` existieren, vorgenommen werden.

### Bearbeitungen von `/etc/regolith/...` Dateien

Wenn Sie Verknüpfungen und manuelle Bearbeitungen von Dateien vorgenommen haben, die sich im Besitz von `root` in `/etc/regolith` oder anderswo befinden, aktualisiert das Paketierungswerkzeug die Dateien möglicherweise nicht und erwähnt auch nicht, dass veraltete Dateien übrig geblieben sind.  Selbst das Entfernen des Pakets mittels `apt remove ...` führt möglicherweise nicht zu einem sauberen System.  Verwenden Sie in diesem Fall den Befehl purge, um das Paket zu entfernen und alle verbliebenen Dateien manuell zu löschen.  Zum Beispiel, um die i3-Konfigurationsdatei zu bereinigen:

```bash
$ sudo apt purge regolith-i3-gaps-config
$ sudo rm -Rf /etc/regolith/i3 # stellen Sie sicher, dass alle wichtigen Änderungen gesichert werden
$ sudo apt install regolith-i3-gaps-config
```

### Fehlerbehebung

##### Blöcke, die nach dem Upgrade fehlen

Regolith 1.4 ändert die Art und Weise, in der Blöcke installiert und konfiguriert werden.  Diese Änderung ist notwendig, um die `arm64`-Architektur sauber zu unterstützen und das Austauschen von Komponenten wie dem Benachrichtigungssubsystem zu vereinfachen.  Ab 1.4 werden die Blöcke durch den Paketmanager installiert.  Siehe [dieses HowTo](../../howto/add-remove-blocklets) zum Hinzufügen und Konfigurieren von Blöcken.

## Ubuntu aktualisieren

Ein Upgrade von Ubuntu 18.04, 18.10, 19.04 oder 19.10 auf 20.04 erfordert, dass das Regolith-PPA erneut hinzugefügt wird, sobald das Ubuntu-Upgrade abgeschlossen ist.

1. Wenn die Standard-Ubuntu-Sitzung nicht installiert ist, installieren Sie diese: <br/>`$ sudo apt install ubuntu-session`.  (Wenn Sie sie bereits installiert haben, sollte dies keinen Schaden anrichten).
2. Führen Sie das Upgrade auf 20.04 durch.
3. Nach dem Neustart loggen Sie sich in die Standard-Ubuntu-Sitzung ein, nicht in Regolith.
4. Fügen Sie das Regolith-PPA hinzu, da der Installationsprozess PPAs entfernt hat:<br/>`$ sudo add-apt-repository ppa:regolith-linux/release`.
5. Aktualisieren Sie Regolith auf die neueste Version:<br/>`$ sudo apt upgrade && sudo apt install regolith-desktop`
6. Starten Sie neu, und wählen Sie nun die Regolith-Sitzung auf dem Anmeldebildschirm aus.

HINWEIS: Einige Benutzer haben berichtet, dass `Regolith-Desktop` während des Upgrades automatisch deinstalliert wird.  Sollte dies der Fall sein, führen Sie einfach `sudo apt install --reinstall regolith-desktop` aus, nachdem das Upgrade abgeschlossen ist, um die Regolith-Desktop-Sitzung wiederherzustellen.

## Neuinstallation

Für den Fall, dass die Regolith-Desktop-Umgebung beschädigt oder anderweitig nicht mehr startfähig ist, führen Sie die folgenden Schritte aus, um sie zurückzusetzen.  Bei diesem Vorgang werden keine Benutzerdateien entfernt:

1. Melden Sie sich bei der Standard-Ubuntu-Sitzung an.  Wenn diese Sitzung nicht verfügbar ist, installieren Sie sie mit `sudo apt install ubuntu-session`.  Wenn Sie sich nicht anmelden können, geben Sie <span class="text-nowrap"><span class="badge badge-warning">Strg</span> <span class="badge badge-warning">Alt</span> <span class="badge badge-warning">F2</span></span> ein, um auf ein TTY Terminal zuzugreifen.  Nach der Installation von `ubuntu-session` haben Sie die Möglichkeit im Anmeldebildschirm den `Ubuntu`-Session-Typ auszuwählen.
2. Deinstallieren Sie Regolith innerhalb der Ubuntu-Sitzung:
```Bash
$ sudo apt purge regolith-*
$ sudo apt autoremove
$ rm -Rf ~/.config/regolith/flags
```
3. Stellen Sie sicher, dass mit `apt list --installed | grep -i regolith` keine Regolith-Pakete mehr installiert sind.  Der Befehl sollte keine Pakete zurückgeben.  Falls doch, deinstallieren Sie sie manuell mit `sudo apt purge <package>`.
4. Installieren Sie Regolith neu:
```
$ sudo apt install regolith-desktop
```
5. Starten Sie den Computer neu, und wählen Sie beim Einloggen die "Regolith"-Sitzung im Zahnrad-Menü.  An diesem Punkt können Sie die "Ubuntu-Sitzung" entfernen oder beibehalten.

## Deinstallation von `Regolith-Desktop`

Folgen Sie einfach diesen Schritten, um Regolith von Ihrem System zu entfernen:

1. Melden Sie sich von der Regolith-Sitzung ab und in die Standard-Ubuntu-Sitzung ab.
2. Öffnen Sie ein Terminal und führen Sie es aus:
```Bash
$ sudo apt purge regolith-desktop && sudo apt autoremove
```
3. Entfernen Sie jetzt die PPA:
```Bash
$ sudo add-apt-repository --remove ppa:regolith-linux/release
```
4. Um Ihre GNOME-Einstellungen wiederherzustellen, starten Sie:
```Bash
$ source ~/.regolith-gnome-backup
```
5. Sie können nun das Verzeichnis `~/.config/regolith` sicher löschen.

## PPA Sources

Es gibt 4 Quellen für Regolith-Pakete.  Das `release` PPA wird für die meisten Benutzer empfohlen, aber ein anderes könnte je nach Ihren Bedürfnissen besser für Sie sein.  Hier ist eine Beschreibung jedes PPAs.

| Name | PPA URI | Aktualität | Stabilität | Beschreibung |
|------|---------|------------|------------|--------------|
| Unstable | <span class="text-nowrap">`ppa:regolith-linux/unstable`</span> | <span class="badge badge-primary">Sehr hoch</span> | <span class="badge badge-secondary">Gering</span> | Das `unstable` PPA wird für Projektentwickler und jeden empfohlen, der mit der Fehlersuche in seinem eigenen System einverstanden ist und sich nicht über einige Probleme von Zeit zu Zeit ärgert. |
| Stable | `ppa:regolith-linux/stable` | <span class="badge badge-primary">Hoch</span> | <span class="badge badge-secondary">Mittel</span> | Die `stable` PPA ist für diejenigen, die auch zwischen den offiziellen Veröffentlichungen die neuesten Features wünschen. |
| Release | <span class="text-nowrap">`ppa:regolith-linux/release`</span> | <span class="badge badge-primary">Niedrig</span> | <span class="badge badge-secondary">Hoch</span> | Das `release`-PPA bietet Fehlerbehebungen, sobald sie auftreten, und bietet Aktualisierungen nach der Veröffentlichung. |
| r1.3 | `ppa:regolith-linux/r1.3` | <span class="badge badge-primary">Sehr gering</span> | <span class="badge badge-secondary">Sehr hoch</span> | Das `r1.3` PPA ist an die Version 1.3 gebunden und wird nicht aktualisiert, außer für kritische Fehlerbehebungen. |

## ARM-Unterstützung

Regolith-Pakete werden für die Architekturen `i386`, `amd64` und `arm64` gebaut.  Ein eigenständiges Installationsprogramm ist für ARM-basierte Systeme wie die Rasberry Pi nicht verfügbar, jedoch kann Regolith über das PPA in ein bestehendes Ubuntu-System installiert werden.  [Siehe oben](#option-2-ppa) über die Installation von Regolith über PPA.
