celsiustofahrenheit <- function(degC) {
  degF <- degC * 9 / 5 + 32
  return(round(degF, 2))
}

generate_conversion_table <- function(minvalue, maxvalue, intervalvalue) {
  degC <- seq(minvalue, maxvalue, by = intervalvalue)
  degF <- sapply(degC, celsiustofahrenheit)
  
  result <- data.frame(Celsius = round(degC, 2), Fahrenheit = degF)
  return(result)
}

conversion_table <- generate_conversion_table(0, 100, 20)

cat(sprintf("%10s %12s\n", "Celsius", "Fahrenheit"))
cat(sprintf("%10s %12s\n", "-------", "----------"))

for (i in 1:nrow(conversion_table)) {
  cat(sprintf("%10.2f %12.2f\n", 
              conversion_table$Celsius[i], 
              conversion_table$Fahrenheit[i]))
}
