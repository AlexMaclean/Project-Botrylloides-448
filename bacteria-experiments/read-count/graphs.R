source("../../scripts/graphs.R")

name <- "E.coli"
data <- read.csv(file = 'data-11-12.csv', header = TRUE)
x <- data$Long.Read.Count
xlab <- "Long Read Count"

plot.length.n50(name, data, x, xlab)
plot.num.contigs(name, data, x, xlab)
plot.runtimes(name, data, x, xlab, "topright", c(0.1, 0.2))
