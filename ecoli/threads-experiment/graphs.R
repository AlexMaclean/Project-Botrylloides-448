source("../../scripts/graphs.R")

data <- read.csv(file = 'data-11-8-2.csv', header = TRUE)
x <- data$threads
xlab <- "Thread Count"

plot.runtimes(data, x, xlab, "topright", 0.05)