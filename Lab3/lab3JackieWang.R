setwd("C:/Users/pc/Desktop/R/Lab3")

data   <- read.csv("AAPL_2021.csv", header = TRUE, stringsAsFactors = FALSE)
dates  <- as.Date(data$Date, format = "%m/%d/%Y")
price  <- as.numeric(gsub("\\$", "", data$Close.Last))
volume <- data$Volume

plot(dates, volume,
     type  = "h",
     lwd   = 1,
     xlab  = "Date",
     ylab  = "Volume",
     main  = "AAPL 2021: Volume & Closing Price")

par(new = TRUE)
plot(dates, price,
     type  = "l",
     lwd   = 2,
     axes  = FALSE,
     xlab  = "",
     ylab  = "")

axis(side = 4)
mtext("Closing Price ($)", side = 4, line = 3)


avg_p <- mean(price, na.rm = TRUE)
med_p <- median(price, na.rm = TRUE)
avg_v <- mean(volume, na.rm = TRUE)
med_v <- median(volume, na.rm = TRUE)

cat("Average Close: $", round(avg_p, 2), "\n")
cat("Median Close: $", round(med_p, 2), "\n")
cat("Average Volume:  ", round(avg_v), "\n")
cat("Median Volume:  ", round(med_v), "\n")

