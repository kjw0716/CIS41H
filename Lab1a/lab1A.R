# CIS44H Lab1A Jackie Wang
nums <- sample(1:100, 10)# Declare a vector of 10 random integers between 1 and 100

for (n in nums) {# Check each integer and print whether it's odd or even
  if (n %% 2 == 0) {
    cat(sprintf("Number %d is even.\n", n))
  } else {
    cat(sprintf("Number %d is odd.\n", n))
  }
}
