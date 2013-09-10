all: lectures.pdf

NOTES=lectures.tex notes/*.tex

lectures.pdf: $(NOTES)
	pdflatex lectures.tex
	pdflatex lectures.tex

lectures-src.zip: $(NOTES)
	zip -r lectures-src $(NOTES)

clean:
	rm *.log *.pdf *.aux *.toc lectures-src.zip
