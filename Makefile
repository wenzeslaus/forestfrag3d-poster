FILE=poster

all: $(FILE).pdf

$(FILE).pdf: *.tex Makefile *.bib
	make pdf
	make pdf
	@while grep ''Rerun to get' to get' $(FILE).log >/dev/null 2>&1 ; do \
		make pdf; \
	done

pdf:
	pdflatex -interaction=nonstopmode $(FILE).tex
	bibtex $(FILE)

clean:
	rm -f *~ *.aux *.log *.out *.toc *.bbl *.blg *-blx.bib *.ps *.pyg

distclean:
	make clean
	rm -f $(FILE).pdf

rasterized:
	gs -sDEVICE=png16m -r400 -o $(FILE).png $(FILE).pdf
	convert $(FILE).png -rotate 90 $(FILE)_rasterized.pdf
