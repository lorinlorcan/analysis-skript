# Makefile to generate **analysis-skript**
#
# Author:
#   Lorin Lorcan

COMMIT_HASH = $(shell git rev-parse --short HEAD)
CONFIG_FILE = config.tex
BASE_JOBNAME = Analysis-Skript

pdf: plot githash
	latexmk --pdf main.tex -jobname=$(BASE_JOBNAME) -quiet
	git checkout -- $(CONFIG_FILE)

pdfmargin: plot githash
	sed -i 's/\\notesfalse/\\notestrue/' $(CONFIG_FILE)
	latexmk --pdf main.tex -jobname=$(BASE_JOBNAME)-Notizrand -quiet
	git checkout -- $(CONFIG_FILE)

plot: pip
	python matplotlib/plot.py

pip:
	pip install --requirement matplotlib/requirements.txt --quiet

githash:
	git checkout -- $(CONFIG_FILE)
	sed -i "s/\\\\newcommand{\\\\githash}{}/\\\\newcommand{\\\\githash}{$(COMMIT_HASH)}/" $(CONFIG_FILE)

help:
	@echo "REQUIREMENTS:"
	@echo "  - texlive (or a similiar TeX-Distribution)"
	@echo "  - python 3.7+"
	@echo
	@echo "TARGETS:"
	@echo "  all"
	@echo "    Generates everything"
	@echo "  pdf"
	@echo "    Generates the document as PDF"
	@echo "  pdfmargin"
	@echo "    Generates the document as PDF with a big margin"
	@echo "  plot"
	@echo "    Plots the python graphs"
	@echo "  pip"
	@echo "    Installs the python requirements"
	@echo
	@echo "  help"
	@echo "    Show this help"

all: pdf pdfmargin

