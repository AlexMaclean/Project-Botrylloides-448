data <- read.csv(file = 'data-11-8.csv', header = TRUE)
x <- data$threads

## Graph: Genome Length and N50 -------------------------------------------------------------
plot(x, data$total.length, col = "black", type = "l",
     ylim = c(0, max(data$total.length)), xlab = "K-mer Size", ylab = "Length (bp)")
lines(x, data$N50, col = "blue")

title(main = "Genome Quality Vs K-Mer Size")
legend("bottomleft",
       legend = c("Total Genome Length", "N50"),
       col = c("black", "blue"),
       pch = 19,
       inset = c(0.1, 0.1))

## Graph: Number of Contigs -----------------------------------------------------------------
plot(x, data$X..contigs, type = "b",
     ylim = c(0, max(data$X..contigs)), ylab = "# Contigs", xlab = "K-mer Size")
title(main = "Number of Contigs Vs K-Mer Size")

## Graph: Runtimes --------------------------------------------------------------------------
start <- as.POSIXct("00:00:00", format = "%H:%M:%S")
real.time <- as.POSIXct(data$Real.Flye.Assembly.time, format = "%M:%S")

seconds <- function(r) {
  as.POSIXct(r, format = "%s", origin = start)
}

ty <- "o"
cols <- c("black", "blue", "cyan", "purple", "orange", "red")

plot(x, real.time, ylim = c(start, max(real.time)), col = cols[1], type = ty,
     ylab = "Time", xlab = "K-mer Size")
lines(x, seconds(data$Quorum.Error.Correcting.time), col = cols[6], type = ty)
lines(x, seconds(data$Estimating.Genome.Size.time), col = cols[5], type = ty)
lines(x, seconds(data$Super.Reads.time), col = cols[4], type = ty)
lines(x, seconds(data$Mega.Reads.time), col = cols[3], type = ty)
lines(x, seconds(data$Consensus.Gap.Joining.time), col = cols[2], type = ty)

title(main = "Runtimes Vs K-Mer Size")
legend("topright",
       legend = c("Real/Flye Assembly",
                  "Consensus Gap Joining",
                  "Mega-Reads",
                  "Super-Reads",
                  "Estimating Genome Size",
                  "Quorum Error Correcting"),
       col = cols,
       pch = 1,
       inset = c(0.05, 0.05))