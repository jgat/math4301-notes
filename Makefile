all: lectures.pdf lectures-src.zip

# This probably won't work unless you're me
SHARE_URL=~/drive/_shared/\[UQ\]\ Past\ Exam\ Papers/MATH4301/
NOTES=lectures.tex notes/*.tex

lectures.pdf: $(NOTES)
	pdflatex lectures.tex
	pdflatex lectures.tex

lectures-src.zip: $(NOTES)
	zip -r lectures-src $(NOTES)

share: lectures.pdf lectures-src.zip
	cp lectures.pdf lectures-src.zip $(SHARE_URL)

clean:
	rm *.log *.pdf *.aux *.toc lectures-src.zip
