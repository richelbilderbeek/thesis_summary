# Create the phylogeny used in the English summary

library(ape)
library(ggtree)

phylogeny <- ape::read.tree(text = "((human:1,gorrila:1):1,dolphin:2):1;")

ggtree::ggtree(phylogeny, cex = 2) +
  ggtree::geom_tiplab(
    geom = "label", cex = 10.0, offset = 0.5, hjust = .8
  ) +
  ggtree::geom_rootedge(cex = 2); ggplot2::ggsave("summary_phylogeny.png")

