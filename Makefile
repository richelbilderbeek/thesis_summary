all: summary.pdf

summary.pdf: *.tex phylogeny.png
	aspell -t -c summary.tex
	./create.sh
	#./view.sh

phylogeny.png: create_phylogeny.R
	Rscript create_phylogeny.R


