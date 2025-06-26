print("Enter several integers (separated by space): ")#Prompt the user to input the integer
nums <- scan(what = integer())#get the input string and convert to integers

for (n in nums) {
  if (!is.na(n) && n >= 0 && n <= 100) {#Check each number
    print(sprintf("Input %d → square = %d", n, n^2))#print its square
  }
}