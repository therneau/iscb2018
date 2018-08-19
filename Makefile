PARTS = intro.tex \
	aalen.tex \
	mgus.tex \
	timedep.tex \
        nafld.tex \
        sequential.tex \
	finegray.tex \
	population.tex \
        mcsa.tex 

%.tex:%.Rnw
	echo "library(knitr); knit('$<')" | R --slave

class18.pdf: class18.tex $(PARTS)
	pdflatex class18.tex

class2.pdf: class2.tex
	pdflatex class2.tex
	bibtex class2
	pdflatex class2.tex

clean:
	-rm *.aux *.log *.nav *.out *.snm *.toc *.vrb 
	-rm *.bbl *.blg

