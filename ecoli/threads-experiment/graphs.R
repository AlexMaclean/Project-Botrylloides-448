source("../../scripts/graphs.R")

data <- read.csv(file = 'data-11-8.csv', header = TRUE)
x <- data$threads
xlab <- "Thread Count"

plot.length.n50(data, x, xlab)
plot.num.contigs(data, x, xlab)
plot.runtimes(data, x, xlab, "topright", 0.05)