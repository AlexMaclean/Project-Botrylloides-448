source("../../scripts/graphs.R")

data <- read.csv(file = 'data-11-12.csv', header = TRUE)
x <- data$Long.Read.Count
xlab <- "Long Read Count"

plot.length.n50(data, x, xlab)
plot.num.contigs(data, x, xlab)
plot.runtimes(data, x, xlab, "topright", c(0.1, 0.2))
