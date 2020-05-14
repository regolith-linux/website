---
title: "Basiswissen"
linkTitle: "Basiswissen"
weight: 2
description: >
  Lerne das wichtigste von Regolith zuerst.
---

Während wir in anderen Bereichen der Dokumentation alles ausführlicher behandeln werden, geht diese Seite auf die Grundlagen ein.

## Die Super Taste

Die meisten Tastaturkürzel, die Sie mit Regolith verwenden werden, beginnen mit der Taste <span class="badge badge-warning">Super</span>.  Auf dieser Taste steht normalerweise "WIN" oder sie trägt ein MS Windows-Logo.  Auf einem Mac ist es die Taste Command <span class="badge badge-warning">⌘</span>.  In Zukunft wird diese Taste einfach als <span class="badge badge badge-warning">Super</span> bezeichnet, aber denken Sie daran, dass Sie die Belegung der physischen Taste <span class="badge badge-warning">Super</span> in Ihrer Konfiguration ändern können, wenn Sie dies wünschen.

## Starter

Regolith stellt mehrere sogenannte Starter zur Verfügung, mit denen sie einfach mit Ihrem System interagieren können.  Jeder dieser Starter hat ein einheitliches Erscheinungsbild, bietet aber Zugang zu einer bestimmten Funktion.  Standard-Starter sind zum Starten von Anwendungen <span class="text-nowrap"><span class="badge badge-warning">Super</span> <span class="badge badge-warning">Leertaste</span></span>, von Kommandos mit <span class="text-nowrap"><span class="badge badge-warning">Super</span> <span class="badge badge-warning">Umschalt</span> <span class="badge badge-warning">Leertaste</span></span>, zur Anzeige von Benachrichtigungen <span class="text-nowrap"><span class="badge badge-warning">Super</span> <span class="badge badge-warning">n</span></span>, von allen offenen Fenstern <span class="text-nowrap"><span class="badge badge-warning">Super</span> <span class="badge badge-warning">Strg</span> <span class="badge badge-warning">Leertaste</span></span>, und von  Dateien <span class="text-nowrap"><span class="badge badge-warning">Super</span> <span class="badge badge-warning">Alt</span> <span class="badge badge-warning">Leertaste</span></span>.

### Starten einer Anwendung

Nach dem Einloggen befinden Sie sich auf einem leeren Bildschirm mit der Leiste unten und einigen Tastenkombinationen rechts.  Um eine Anwendung zu starten, drücken Sie <span class="text-nowrap"><span class="badge badge-warning">Super</span> <span class="badge badge-warning">Leertaste</span></span> und es wird ein Menü mit allen auf dem System installierten Anwendungen angezeigt.  Wenn Sie mit der Eingabe des Namens der Anwendung beginnen, die Sie starten möchten, wird die Liste nach nur übereinstimmenden Namen gefiltert.  Sie können auch mit den Pfeiltasten durch die Liste blättern.


<img class="shadow m-5" src="../screenshot-launcher.png" width="640px"/>

### Zu einem Fenster navigieren

Um sich zu einer laufenden Anwendung zu wechseln, kann die Tastenkombination <span class="text-nowrap"><span class="badge badge-warning">Super</span> <span class="badge badge-warning">Strg</span> <span class="badge badge-warning">Leertaste</span></span> verwendet werden, um einen Dialog aller laufenden Fenster anzuzeigen.  Wählen Sie einfach das gewünschte Fenster aus und das System wechselt in den Arbeitsbereich des Fensters, der das Fenster enthält, und setzt den Fokus.

<img class="shadow m-5" src="../regolith-screenshot-window-nav2.png" width="640px"/>

### Suchen und Starten einer Datei

Das Durchsuchen Ihres lokalen Computers nach einer bestimmten Datei kann auf verschiedene Weise erreicht werden.  Regolith bietet einen Dateisuchdialog über <span class="text-nowrap"><span class="badge badge-warning">Super</span> <span class="badge badge-warning">Alt</span> <span class="badge badge-warning">Leertaste</span></span> zum schnellen Suchen und optionalen Laden einer Datei mit ihrer Standardanwendung.  Wenn der Dateipfad die Breite des Dialogfelds überschreitet, schaltet <span class="text-nowrap"><span class="badge badge-warning">Alt</span> <span class="badge badge-warning"></span></span> die Textausrichtung um.  Wenn Sie bei einer Auswahl die Eingabetaste drücken, wird die Datei mit dem Befehl <code>xdg-open</code> geöffnet.

<img class="shadow m-5" src="../regolith-file-search.png" width="640px"/>

### Terminal

Das Terminal ist eine spezielle Anwendung, die über eine eigene Tastenbindung verfügt, <span class="text-nowrap"><span class="badge badge-warning">Super</span> <span class="badge badge-warning">Eingabetaste</span></span>.

### Browser

Der bevorzugte Browser ist ebenfalls speziell und kann mit <span class="text-nowrap"><span class="badge badge-warning">Super</span> <span class="badge badge-warning">Umschalt</span> <span class="badge badge-warning">Eingabetaste</span></span> gestartet werden.

## Beenden einer Bewerbung

<span class="text-nowrap"><span class="badge badge-warning">Super</span> <span class="badge badge-warning">Umschalt</span> <span class="badge badge-warning">q</span></span> wird die fokussierte Anwendung beendet.  Bei fehlerhaftem Verhalten von Anwendungen erzwingt <span class="text-nowrap"><span class="badge badge-warning">Super</span> <span class="badge badge-warning">Alt</span> <span class="badge badge-warning">q</span></span> das Beenden der fokussierten Anwendung, aber beachten Sie, dass nicht gespeicherte Daten wahrscheinlich verloren gehen.

## Wechseln von Arbeitsbereichen

Die Verwendung von Arbeitsbereichen ist die wichtigste Möglichkeit um die Belegung des Bildschirms zu verwalten.  Ein Arbeitsbereich ist im Wesentlichen eine Gruppe von keiner oder mehr Anwendungen, die alle Fenster auf demselben physischen Bildschirm darstellen.  Benutzer können Arbeitsbereiche wechseln, um mehr Platz zu "gewinnen", den Anwendungen belegen können.  Fenster können zwischen Arbeitsbereichen verschoben werden.  Arbeitsbereiche können an die physischen Bildschirm gebunden oder bei Bedarf auf andere Bildschirme verschoben werden.  Um die Arbeitsbereiche zu wechseln, halten Sie die Taste <span class="badge badge-warning">Super</span> gedrückt und drücken Sie eine der Zifferntasten.  Dadurch wird zu diesem Arbeitsbereich navigiert.  Wenn in einem bestimmten Arbeitsbereich Fenster vorhanden sind, werden diese in der Leiste als aktiv angezeigt. Durch Bezugnahme auf die Leiste kann der Benutzer also wissen, in welchen Arbeitsbereichen aktive Anwendungen aktiv sind.

Arbeitsbereiche können auch über <span class="text-nowrap"><span class="badge badge-warning">Super</span> <span class="badge badge-warning">Tab</span></span> und <span class="text- vorwärts und rückwärts geblättert werden. nowrap"><span class="badge badge-warning">Super</span> <span class="badge badge-warning">Umschalt</span> <span class="badge badge-warning">Tab</span></span> gewechselt werden.

## Konfigurieren des Systems

Die Anwendung "Einstellungen" (auch bekannt als "GNOME-Kontrollzentrum") ist die Anlaufstelle für allgemeine Konfigurationsaufgaben, wie das Ändern des Desktophintergrunds, die Konfiguration von WLAN und Bluetooth, die Konfiguration von Anwendungszuordnungen und das Einrichten von Benutzer*innen.  Diese Anwendung kann über das <span class="text-nowrap"><span class="badge badge-warning">Super</span> <span class="badge badge-warning">c</span></span> Tastaturkürzel oder vom Starter aus über die `Einstellungen` Anwendung gestartet werden.

<img class="shadow m-5" src="../regolith-control-panel.png" width="640px"/>

## Weiterführendes

Weitere Tastaturkürzel sind unter <code>Remontoire</code>, der Abkürzungsanwendung, aufgeführt.  Diese Anwendung wird automatisch bei der ersten Sitzung geladen, aber nicht bei aufeinanderfolgenden Anmeldungen.  Das Fenster kann jederzeit umgeschaltet werden, indem Sie auf das eingekreiste Symbol <span class="badge badge-warning">i</span> in der Leiste klicken oder <span class="text-nowrap"><span class="badge badge-warning">Super</span> <span class="badge badge-warning">Umschalt</span> <span class="badge badge-warning">?</span></span></span> drücken.
