CC = pdflatex
BB = bibtex


all: Template.pdf
	echo 'Party!'



%.pdf : %.tex
	$(CC) $* && $(BB) $* && $(CC) $* && $(CC) $* && open $@





clean:
	rm -r -f *.aux *.dvi *.log *.out *.pdf *.ps *.blg *.bbl *.spl
