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
