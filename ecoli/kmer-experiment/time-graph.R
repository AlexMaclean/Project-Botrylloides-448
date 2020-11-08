data <- read.csv(file = 'data-11-8.csv', header = TRUE)

## Graph: Genome Length and N50 -------------------------------------------------------------
plot(data$k, data$total.length, col = "black", type = "l",
     ylim = c(0, max(data$total.length)), xlab = "K-mer Size", ylab = "Length (bp)")
lines(data$k, data$N50, col = "blue")

title(main = "Genome Quality Vs K-Mer Size")
legend("bottomleft",
       legend = c("Total Genome Length", "N50"),
       col = c("black", "blue"),
       pch = 19,
       inset = c(0.1, 0.1))

## Graph: Number of Contigs -----------------------------------------------------------------
plot(data$k, data$X..contigs, type = "b",
     ylim = c(0, max(data$X..contigs)), ylab = "# Contigs", xlab = "K-mer Size")
title(main = "Number of Contigs Vs K-Mer Size")

## Graph: Runtimes --------------------------------------------------------------------------
start <- as.POSIXct("00:00:00", format = "%H:%M:%S")
real.time <- as.POSIXct(data$Real.Flye.Assembly.time, format = "%M:%S")

plot(data$k, real.time, ylim = c(start, max(real.time)),
     type = "b", ylab = "Time", xlab = "K-mer Size")
lines(data$k, as.POSIXct(data$Quorum.Error.Correcting.time, format = "%s", origin = start),
      col = "red", type = "b")
lines(data$k, as.POSIXct(data$Estimating.Genome.Size.time, format = "%s", origin = start),
      col = "orange", type = "b")
lines(data$k, as.POSIXct(data$Super.Reads.time, format = "%s", origin = start),
      col = "purple", type = "b")
lines(data$k, as.POSIXct(data$Mega.Reads.time, format = "%s", origin = start),
      col = "cyan", type = "b")
lines(data$k, as.POSIXct(data$Consensus.Gap.Joining.time, format = "%s", origin = start),
      col = "blue", type = "b")

title(main = "Runtimes Vs K-Mer Size")
legend("topleft",
       legend = c("Real/Flye Assembly",
                  "Consensus Gap Joining",
                  "Mega-Reads",
                  "Super-Reads",
                  "Estimating Genome Size",
                  "Quorum Error Correcting"),
       col = c("black", "blue", "cyan", "purple", "orange", "red"),
       pch = 1,
       inset = c(0.1, 0.2))