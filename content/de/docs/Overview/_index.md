---
title: "Überblick"
linkTitle: "Überblick"
weight: 1
description: >
  Was ist Regolith?
---

Regolith ist eine Sammlung von Open-Source-Komponenten. Zusammen bilden sie eine Allzweckschnittstelle für die Benutzung eines Computers, auch bekannt als *Desktop-Umgebung* [[1]](#Fußnoten). Viele der UI-Komponenten, die zur Erstellung von Regolith verwendet werden, sind unabhängige Open-Source-Projekte [[2]](#footnotes), die einfach integriert, gepackt und für einen bestimmten Arbeitsablauf und eine bestimmte visuelle Ästhetik konfiguriert wurden. Die meisten Computer-Desktop-Umgebungen sind auf Benutzerfreundlichkeit und Vertrautheit mit kommerziellen Betriebssystemen wie Microsoft Windows oder Apples OS X optimiert. Im Gegensatz dazu bietet Regolith eine Möglichkeit der Interaktion mit einem Computer, die **für die Benutzerproduktivität optimiert** ist, und versucht nicht, veraltete UI-Paradigmen nachzuahmen, um Vertrautheit zu erreichen.

## Die Tastatur, die Maus und der Monitor

Regolith legt, im Vergleich zu den meisten anderen Desktop-Umgebungen, den Schwerpunkt auf die Tastatureingabe über die der Maus.  Dies hat einen Grund: Produktivität.  Insbesondere ist die Zeit, die benötigt wird, um eine Tastenbindung auf der Tastatur zu drücken, kürzer als die Zeit, die Ihre Hand benötigt, um von der Tastatur zur Maus zu gelangen und eine Reihe von Klicks auszuführen, um zu einer gewünschten Aktion zu gelangen und dann Ihre Hände wieder auf die Tastatur zu bekommen.  Obwohl dieser Zeitunterschied gering ist, summiert er sich aufgrund häufiger Interaktionen schnell.

Dieser Vorteil ist jedoch mit einem einmaligen Kostenfaktor verbunden: dem Erlernen der Tastenbelegung.  Im Gegenzug zu diesen Vorabkosten ist die/der Benutzer\*in später in der Lage, allgemeine Computeraktionen schneller und mit weniger Vordergrunddenken durchzuführen.  Zusätzlich kann durch die Verlagerung der Computeraktionen in das Gehirn der/des Benutzer\*in ein grösserer Teil des Bildschirms den den Anwendungen des Benutzers gewidmet werden. Die Regolith-Schnittstelle widmet mehr Bandbreite der Anwendung des/der Benutzers\*in und weniger der allgemeinen Verwaltung des Computers.  Und weil letztlich die produktive Ausgabe des/der Benutzers\*in ein Ergebnis der Interaktion mit *Anwendungen* ist, wird die allgemeine Produktivität des/der Benutzers\*in erhöht. Dies ist ein subjektiver Vorteil, der für den/die Benutzer\*in mehr oder weniger wichtig sein kann.


## Fenster kacheln

Die für die/den Benutzer\*in vielleicht wichtigste Komponente in Regolith ist der Window-Manager, ein Open-Source-Projekt namens <code>i3-gaps</code> (das eine Anpassung von <code>i3-wm</code> ist).  Dieses Programm organisiert Fenster in Kacheln.  Standardmäßig unterteilt `i3-gaps` den Bildschirm in Abschnitte für jedes Fenster, die sich alle auf den gesamten Bildschirm summieren.  Wenn nur ein Programm ein Fenster präsentiert, dann nimmt dieses Fenster den gesamten Bildschirm ein.  Bei zwei Fenstern erhalten beide den gleichen Teil des Bildschirms, und so weiter.  Mit Hilfe von Tastenkombinationen kann der Benutzer `i3-gaps` anweisen, die Größe von Fenstern zu ändern, sie zu verschieben und auf andere Weise zu organisieren. Ein wesentlicher Vorteil dieses Ansatzes besteht darin, dass der Benutzer von der Mikro-Verwaltung der Fenster-Layouts befreit wird (auf Kosten des einmaligen Erlernens der Tastenbelegung).

## Starten von Anwendungen

In Desktop-Umgebungen ist es üblich, Anwendungsstartprogramme auf der gesamten Benutzeroberfläche in Form von Symbolen und Text anzuzeigen.  Ordner, Docks und Kontextmenüs werden verwendet, um dem Benutzer eine Art Menü zu präsentieren.  Obwohl sie optisch unterschiedlich aussehen, haben sie nur eine Funktion: den Start einer Anwendung.  Wie bei den Tastaturkürzeln ist auch in Regolith diese Benutzeroberfläche zum Starten von Anwendungen verfeinert und minimiert.  Desktop-Symbole, Bedienfelder und Docks werden nicht verwendet.  Vielmehr ruft die/der Benutzer\*in den Anwendungsstarter auf, der ein Menü von Anwendungen präsentiert, die nach Nutzungshäufigkeit sortiert sind.  Der/die Benutzer*in kann mit der Eingabe des Namens oder der Funktion der Anwendung beginnen, die er/sie zu laden beabsichtigt, und die Liste wird entsprechend gefiltert.  Darüber hinaus haben häufig verwendete Anwendungen wie Terminal und Browser spezifische Tastaturbelegungen.  Mit dieser UI-Behandlung gibt es keinen festen Overhead auf der Anzeige für die Präsentation von Anwendungsstartern.  Dies bietet der/dem Benutzer\*in den Vorteil, dass mehr Bildschirmplatz für die Anwendungen des/der Benutzers\*in zur Verfügung steht.

## Systemverwaltung

Moderne Computer sind komplexe Maschinen mit vielen beobachtbaren Eigenschaften. Für den alltäglichen Betrieb können die meisten davon jedoch ignoriert werden.  Jeder Benutzer hat eine bestimmte Teilmenge von Systemzuständen, um die er sich kümmert, und so gibt es nicht für jeden Benutzer eine perfekte Konfiguration.  Standardmäßig bietet Regolith auf dem Bildschirm Statusinformationen über die Leiste für die Arbeitsbereiche des Benutzers, die Hilfe zu den Tastaturbelegungen, die Netzwerk- und CPU-Auslastung, Benachrichtigungen und die Systemzeit.  Je nach Bedarf können mehr oder weniger Elemente vom Benutzer konfiguriert werden.

Zusätzlich zu den vorübergehenden Systeminformationen, die auf dem Balken angezeigt werden, kann die Systemkonfiguration vom Benutzer über die Anwendung <code>Einstellungen</code> geändert werden.  Dieses Konfigurationssystem ist Teil von GNOME und bietet eine Menge Konfigurationen von WiFi-Netzwerken, Bluetooth-Geräten, Bildschirmen und anderen Geräten.

### Konfigurationsdateien

Während die meisten der üblichen Aufgaben der Systemverwaltung und -administration über grafische Oberflächen wie `Einstellungen` abgewickelt werden, erfolgt die Konfiguration auf unterer Ebene durch die Bearbeitung von Konfigurationsdateien, die als Teil von Regolith installiert werden.  Um zum Beispiel zu ändern, welche Informationen auf der Leiste angezeigt werden, oder um die Randbreite von Fenstern zu verändern, ist die Bearbeitung von Konfigurationsdateien erforderlich.  Diese Anpassungen werden im Abschnitt [Anpassung](/docs/customize/) behandelt.

## Und wohin als nächstes?

* [Erste Schritte](../getting-started/): Erste Schritte mit Regolith
* [The Interface](../interface/): Verstehen, wie man Aktionen in Regolith ausführt
* [Keybindings](../reference/keybindings/): Lernen Sie die Tastenkombinationen

### Fußnoten

1: Der Begriff stammt aus einer Zeit, als Computer groß waren und auf Schreibtischen verwendet wurden. Das ist nicht mehr der Fall, aber wir verwenden den Begriff immer noch.  Eine *Desktop-Umgebung* ist im Allgemeinen auf jeden Computer mit einer Tastatur, einem Bildschirm und einer Art Zeigegerät anwendbar.

2: Siehe [the interface page](../interface/) für Einzelheiten über die Komponenten, aus der Regolith besteht.