# Project directories
CWD := $(abspath $(shell pwd))
SRC := $(CWD)/src
OUT := $(CWD)/out
IMG := $(CWD)/screenshots

# External commands
RM=/bin/rm -f

SRC_FILES := $(wildcard $(SRC)/*.md)
OUT_HTML_FILES := $(subst src,out,$(subst .md,.html, $(SRC_FILES)))
OUT_PDF_FILES := $(subst src,out,$(subst .md,.pdf, $(SRC_FILES)))

.PHONY: pdf clean pdf-screenshots pdf-from-img
.SILENT: pdf clean pdf-screenshots pdf-from-img

pdf: $(OUT_PDF_FILES)

$(OUT)/%.pdf: $(OUT)/%.html
	decktape -s 1600x1000 $< $@

$(OUT)/%.html: $(SRC)/%.md
	@pandoc -s --mathjax=$(CWD)/mathjax/MathJax.js -i -t revealjs $< -V center=false -V history=false -V revealjs-url=$(CWD)/reveal.js --include-in-header=$(SRC)/head.html -o $@

# This generates a PDF as a necessary byproduct of outputting screenshots? In any case this is old
# and not necessary for this project, but kept for posterity in case there are future use cases
# for generating images
pdf-screenshots: $(OUT)/main.html
	decktape -s 1600x1000 --screenshots $< --screenshots-directory $(IMG) temp.pdf

# This is dependent on all the screenshots in ./screenshots, but I'm not going to make an explicit
# dependency here. In any case this is old and not necessary for this project, but kept for
# posterity in case there are future use cases for generating images.
pdf-from-img:
	python3 img2pdf.py

clean:
	@$(RM) $(OUT)/*
