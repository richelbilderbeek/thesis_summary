all: summary.pdf

summary.pdf: *.tex
	aspell -t -c summary.tex
	./create.sh
	#./view.sh

