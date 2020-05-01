all: summary.pdf

summary.pdf: *.tex
	./create.sh
	#./view.sh

