# Project directories
CWD := $(abspath $(shell pwd))
SRC := $(CWD)/src

# External commands
RM=/bin/rm -f

html: $(SRC)/main.html

$(SRC)/main.html: $(SRC)/main.md
	@pandoc -s --mathjax=$(CWD)/mathjax/MathJax.js -i -t revealjs $(SRC)/main.md -V center=false -V history=false -V revealjs-url=$(CWD)/reveal.js --include-in-header=$(SRC)/head.html -o $(SRC)/main.html

clean:
	@$(RM) $(SRC)/main.pdf $(SRC)/main.html
