cis64CMax <- function(x) {
  if (!is.numeric(x)) return(NA)
  sapply(seq_along(x), function(i) max(x[1:i]))
}

cis64CMin <- function(x) {
  if (!is.numeric(x)) return(NA)
  sapply(seq_along(x), function(i) min(x[1:i]))
}

cis64CSum <- function(x) {
  if (!is.numeric(x)) return(NA)
  sapply(seq_along(x), function(i) sum(x[1:i]))
}

cis64CProd <- function(x) {
  if (!is.numeric(x)) return(NA)
  sapply(seq_along(x), function(i) prod(x[1:i]))
}

cis64Diff <- function(x) {
  if (!is.numeric(x)) return(NA)
  if (length(x) < 2) return(numeric(0))
  x[-1] - x[-length(x)]
}

# Read numeric input
cat("Enter numbers (use space to split), then press Enter:\n")
data <- scan(what = numeric(), quiet = TRUE)

# Show input and comparisons
cat("Input     : ", data, "\n")
cat("cis64CMax : ", cis64CMax(data), "\n")
cat("cummax    : ", cummax(data), "\n\n")
cat("cis64CMin : ", cis64CMin(data), "\n")
cat("cummin    : ", cummin(data), "\n\n")
cat("cis64CSum : ", cis64CSum(data), "\n")
cat("cumsum    : ", cumsum(data), "\n\n")
cat("cis64CProd: ", cis64CProd(data), "\n")
cat("cumprod   : ", cumprod(data), "\n\n")
cat("cis64Diff : ", cis64Diff(data), "\n")
cat("diff      : ", diff(data), "\n")