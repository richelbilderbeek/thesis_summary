all: summary.pdf

summary.pdf: *.tex summary_phylogeny.png
	./create.sh

spell_check:
	aspell -t -c summary.tex

summary_phylogeny.png: create_phylogeny.R
	Rscript create_phylogeny.R


