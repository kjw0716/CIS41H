cat("Enter an integer between 2 and 99:" )
num <- as.integer(readline())

if (num >= 2 & num <= 99){
  for (i in 2:(num - 1)) {
    if (num %% i == 0) {
      cat(num, "is not a prime number.\n")
      break
    }
    if (i == num - 1) {
      cat(num, "is a prime number.\n")
    }
  }
}else{
  cat("Invalid input. Please enter an integer between 2 and 99")
}
