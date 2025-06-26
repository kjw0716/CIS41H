# cis64Max
cis64Max <- function(x) {
  if (!is.numeric(x)) {
    return(NA)
  }
  if (length(x) == 0) {
    return(NA)
  }
  current_max <- x[1]
  for (val in x) {
    if (val > current_max) {
      current_max <- val
    }
  }
  return(current_max)
}

# cis64Min
cis64Min <- function(x) {
  if (!is.numeric(x)) {
    return(NA)
  }
  if (length(x) == 0) {
    return(NA)
  }
  current_min <- x[1]
  for (val in x) {
    if (val < current_min) {
      current_min <- val
    }
  }
  return(current_min)
}

# cis64Sum
cis64Sum <- function(x) {
  if (!is.numeric(x)) {
    return(NA)
  }
  if (length(x) == 0) {
    return(0)
  }
  total <- 0
  for (val in x) {
    total <- total + val
  }
  return(total)
}

# cis64Prod
cis64Prod <- function(x) {
  if (!is.numeric(x)) {
    return(NA)
  }
  if (length(x) == 0) {
    return(1)
  }
  product <- 1
  for (val in x) {
    product <- product * val
  }
  return(product)
}

cat("Please enter numeric data, separated by spaces:\n")
data <- scan(what = numeric(), quiet = TRUE)

cat("\nYour input vector:\n")
print(data)

# Compute with custom functions
max1  <- cis64Max(data)
min1  <- cis64Min(data)
sum1  <- cis64Sum(data)
prod1 <- cis64Prod(data)

# Compute with base R
max2  <- if (length(data) == 0) NA else max(data)
min2  <- if (length(data) == 0) NA else min(data)
sum2  <- sum(data)
prod2 <- prod(data)

cat("cis64Max:  ", max1,  "\tbase max:  ", max2,  "\n")
cat("cis64Min:  ", min1,  "\tbase min:  ", min2,  "\n")
cat("cis64Sum:  ", sum1,  "\tbase sum:  ", sum2,  "\n")
cat("cis64Prod: ", prod1, "\tbase prod: ", prod2, "\n")
