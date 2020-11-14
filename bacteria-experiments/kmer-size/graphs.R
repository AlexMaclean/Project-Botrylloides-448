source("../../scripts/graphs.R")

kmer.graphs <- function(name, data) {
  x <- data$k
  xlab <- "K-mer Size"

  plot.length.n50(name, data, x, xlab)
  plot.num.contigs(name, data, x, xlab)
  plot.runtimes(name, data, x, xlab, "topleft", c(0.1, 0.2))
}

kmer.graphs("E.coli", read.csv(file = 'ecoli-data-11-8.csv', header = TRUE))
kmer.graphs("Listeria", read.csv(file = 'listeria-data-11-13.csv', header = TRUE))
