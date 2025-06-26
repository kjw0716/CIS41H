set.seed(1)

x1 <- rnorm(100)
x2 <- rnorm(100)

x3 <- x1 * x2

hist(x3,
     main = "Histogram of x3 = x1 * x2",
     xlab = "x3 values")

calc_stats <- function(x) {
  c(
    Mean   = mean(x),
    Median = median(x),
    SD     = sd(x)
  )
}

stats_x1 <- calc_stats(x1)
stats_x2 <- calc_stats(x2)
stats_x3 <- calc_stats(x3)

print(stats_x1)
print(stats_x2)
print(stats_x3)



