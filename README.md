# analysis-skript

## Allgemeines

![Aktuelle Version](https://img.shields.io/github/v/release/lorinlorcan/analysis-skript.svg?label=Version&style=flat-square) 

[**Zum Download**](https://github.com/lorinlorcan/analysis-skript/releases/latest)

Dieses Dokument ist eine digitalisierte Mitschrift der Analysisvorlesung an der **[FH Wedel](https://www.fh-wedel.de/)**. Es soll dazu dienen, der Vorlesung besser folgen zu können und ist über viele Stunden in größtmöglicher Sorgfalt entstanden. Dennoch ist nicht auszuschließen, ja sogar davon auszugehen, dass das Dokument noch einige Fehler enthält.

**Benutzen auf eigene Verantwortung...**

Wenn du auf Fehler stößt oder sonstige Anmerkungen hast, dann kannst du eines der folgenden Dinge tun:

- Einen [Pull-Request](github.com/lorinlorcan/analysis-skript/pulls) auf GitHub stellen
- Ein [Ticket](github.com/lorinlorcan/analysis-skript/issues) auf GitHub anlegen

## Lokal bauen/bearbeiten

Dieses Skript basiert im wesentlichen auf der Sprache **LaTeX**.

Für 3D-Graphen wurde die **Python**-Library matplotlib benutzt um entsprechende `*.pfg` Dateien zu erstellen.

### Abhängigkeiten

Folgendes sollte installiert sein:

- TexLive (vollständig) 
- Python 3.7

Python Abhängigkeiten:

```console
$ python -m pip install --upgrade pip
$ pip install -r matplotlib/requirements.txt
```

### Dokument bauen

Um die 3D-Graphen einmal zu plotten, muss einmal matplotlib/plot.py ausgeführt werden:

```console
$ python matplotlib/plot.py
```

Kompilieren kannst du die Root-Datei `main.tex` mit `pdflatex` oder `latexmk` wenn dir die Referenzen im Dokument wichtig sind und du `pdflatex` nicht manuell mehrmals ausführen willst. 

```console
$ pdflatex main.tex
```

```console
$ latexmk --pdf main.tex
```

### Dokument bearbeiten

Die LaTeX-Dateien können in einem Editor freier Wahl editiert werden, falls du keine Präferenz hast, empfehle ich [VS Code](https://code.visualstudio.com/) mit der Erweiterung: [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)
