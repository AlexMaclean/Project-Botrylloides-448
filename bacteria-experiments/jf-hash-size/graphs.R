source("../../scripts/graphs.R")

data <- read.csv(file = 'data-11-9.csv', header = TRUE)
x <- data$jf.size
xlab <- "Jelly Fish Hash Size"

recomended.line <- function() {
  recomended.size <- 5595799 * 20
  abline(v = recomended.size, col = "grey", lty = 2)
}

plot.length.n50(data, x, xlab)
recomended.line()
plot.num.contigs(data, x, xlab)
recomended.line()
plot.runtimes(data, x, xlab, "topleft", c(0.1, 0.2))
recomended.line()