all: summary.pdf

summary.pdf: *.tex summary_phylogeny.png
	aspell -t -c summary.tex
	./create.sh
	#./view.sh

summary_phylogeny.png: create_phylogeny.R
	Rscript create_phylogeny.R


