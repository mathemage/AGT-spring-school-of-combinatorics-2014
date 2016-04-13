all: AGT.pdf

# LaTeX must be run multiple times to get references right
AGT.pdf: AGT.tex
	pdflatex $<
	pdflatex $<

clean:
	rm -f *.log *.dvi *.aux *.toc *.lof *.lot *.out *.bbl *.blg *._aux *._log *.nav *.synctex.gz *.project.vim .tmp/*
	rm -f AGT.pdf
