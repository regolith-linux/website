---
title: "Konfiguration"
linkTitle: "Konfiguration"
weight: 3
description: >
  Nehmen Sie Änderungen an der Art und Weise vor, wie Regolith aussieht und sich verhält.
---

## Bildschirmhintergrund

Das Hintergrundbild kann über `Einstellungen`, oder <span class="text-nowrap"><span class="badge badge-warning">Super</span> <span class="badge badge-warning">c</span></span> geändert werden, indem Sie zur Registerkarte `Hintergrund` gehen und das bevorzugte Bild oder die bevorzugte Farbe auswählen.

<img class="shadow m-5" src="../regolith-screenshot-settings-wallpaper.png" width="640px"/>

## Statusleisten-Indikatoren

Statusindikatoren wie CPU-Last, Datum und Uhrzeit, Benachrichtigungen, Wetter und andere Systeminformationen können durch die Installation von Paketen hinzugefügt oder entfernt werden.  Um z.B. eine Statusanzeige für Ihren Laptop-Akku anzuzeigen, führen Sie einfach `sudo apt install i3xrocks-battery` aus und aktualisieren Sie dann die Sitzung.  Um herauszufinden, welche Indikatoren verfügbar sind, führen Sie `apt search ^i3xrocks-` aus oder suchen Sie nach "i3xrocks-" in Ihrer bevorzugten Paketmanager-GUI, wie z.B. [Synaptic](https://help.ubuntu.com/community/SynapticHowto).

<img class="shadow m-5" src="../regolith-screenshot-synaptic-search.png" width="480px"/>

## Looks

Farben, Hintergründe, Fenster- und Leistenlayouts und andere visuelle Details werden in Regolith gebündelt und "Looks" genannt.  Looks bieten eine einfache Möglichkeit, das gesamte Aussehen des Desktops mit wenigen Befehlen zu verändern.  Zur Zeit kann das Aussehen nur über die Befehlszeile konfiguriert werden, aber es gibt ein Skript, das die Details für Sie verwaltet.  Wie die Indikatoren der Statusleiste sind die "Looks" in Pakete verpackt und werden wie jedes andere Softwarepaket installiert und entfernt.  Laut Konvention verwenden Look-Pakete das folgende Namensformat `regolith-look-<name>`.  `apt` oder ein GUI-Paketmanager kann verwendet werden, um nach verfügbaren Look-Paketen zu suchen.  Das Werkzeug `regolith-look` kann verwendet werden, um das Aussehen zu ändern und die aktive Sitzung mit dem gewählten Look zu aktualisieren.  Hier ist ein Beispiel, das auf den `cahuella`-Look umschaltet, der standardmäßig ab Regolith 1.3 ausgeliefert wird:

```bash
$ apt search ^regolith-look-
...
regolith-look-cahuella/bionic,now 2.4.9 amd64
...
$ sudo apt install regolith-look-cahuella
$ regolith-look set cahuella
$ regolith-look refresh
```

## Tastaturbelegung

Die häufigste Änderung der Tastaturbelegung ist die Supertaste.  Regolith verwendet Xresources als die kanonische Quelle der Wahrheit für Einstellungen, die von verschiedenen UI-Komponenten gelesen werden.  Die Tabelle der Xresource-Schlüssel, die für die Benutzer*innenkonfiguration geöffnet sind, finden Sie hier.  Um z.B. die Standard-Superbindung vom Windows-Schlüssel auf Alt zu ändern, fügen Sie die folgende Zeile in die Datei `~/.config/regolith/Xresources` ein:

```bash
i3-wm.mod: Mod1
i3-wm.alt: Mod4
```

Um andere Tastaturbelegungen zu ändern, ist die Erstellung einer Benutzerkopie der i3-Konfigurationsdatei erforderlich.  Weitere Informationen finden Sie im [staging configs HowTo](../../howto/stage-configs).

Anmerkung: GNOME hat auch seinen eigenen Satz von Tastaturbelegungen.  Wenn die Regolith-Sitzung zum ersten Mal initialisiert wird, werden die widersprüchlichen GNOME-Schlüsselbindungen aus den Benutzereinstellungen entfernt.  Die GNOME-Schlüsselbindungen können in den `Einstellungen` verwaltet werden.

<img class="shadow m-5" src="../regolith-screenshot-settings-keybindings.png" width="640px"/>


## Fast alles andere

Die `Einstellungen` oder das GNOME-Control-Panel, wie es auch genannt wird, ist das Werkzeug zur Konfiguration von Locale-, Datums-, Anzeige-, Netzwerk- und verschiedenen anderen Einstellungen.  Starten Sie es über den Anwendungsstarter mit <span class="text-nowrap"><span class="badge badge-warning">Super</span> <span class="badge badge-warning">Leertaste</span></span>, geben Sie 'Einstellungen' ein und drücken Sie die Eingabetaste, um die Anwendung zu starten.  Oder, die direkte Tastenbindung ist <span class="text-nowrap"><span class="badge badge-warning">Super</span> <span class="badge badge-warning">c</span></span>.

## Weiterführende Lektüre

Weitere Informationen finden Sie im Abschnitt [Anpassung](../../customize), in den [HowTos](../../howto) oder in der [Xresource reference](../../reference/xresources).  Werden Sie ein/e i3 Power Benutzer*in, indem Sie das [Benutzerhandbuch] lesen (https://i3wm.org/docs/userguide.html).
