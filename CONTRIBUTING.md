# CONTRIBUTING

> »Ich will mitschreiben / was verbessern, was sollte ich beachten?«

## LaTeX

### Math Mode

#### Inline

```latex
\( 4 + 3 \)

% Bitte nicht:
$ 4 + 3 $
```

#### Block

```latex
\[
  a + b = c
\]
```

## Verzeichnisstruktur

Root-Dokument ist `main.tex`.

Von ihr werden alle weiteren Dateien eingebunden, denn für eine bessere Übersicht wurde sowohl der eigentlich Inhalt als auch die Preamble in verschiedene Dateien auf verschiedene Ordner aufgeteilt:

- `preamble/`  
	Für alle Dateien, die sich auf die LaTeX-Preamble beziehen.
- `kapitel/`  
	Für alle Dateien, die sich auf die fachlich-inhaltliche Ausarbeitung beziehen.
- `titel/`  
	Für alle Dateien, die zwar inhaltlich zum Dokument gehören, aber nicht zur eigentlichen Mathematik gehören.
- `grafiken/`  
	Für alle Grafikdateien (wer hätte es gedacht), die nicht generiert werden.
- `matlplotlib/`  
	Für das kleine Python-Projekt um besondere Grafiken zu erstellen.

Es gibt eine **Ausnahme**:  
Die `config.tex` Datei (auf root Ebene) beinhaltet Werte, die konfigurierbar sein sollen um verschiedene Dokumente zu generieren.

