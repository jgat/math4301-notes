all: lectures.pdf

NOTES=lectures.tex notes/*.tex

lectures.pdf: $(NOTES)
	pdflatex lectures.tex
	pdflatex lectures.tex

clean:
	rm *.log *.pdf *.aux *.toc
