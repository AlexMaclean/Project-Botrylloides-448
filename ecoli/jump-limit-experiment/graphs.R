source("../../scripts/graphs.R")

data <- read.csv(file = 'data-11-10.csv', header = TRUE)
x <- data$Jump.Limit
xlab <- "Jump Limit"

plot.length.n50(data, x, xlab)
plot.num.contigs(data, x, xlab)
plot.runtimes(data, x, xlab, "topleft", c(0.1, 0.2))
