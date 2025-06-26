input_str <- readline("Enter all students’ preferences (1=Pepsi, 2=Sprite, 3=Fanta, 4=Mug): \n")
prefs     <- as.integer(unlist(strsplit(input_str, " ")))

# Define the possible levels
prefs_factor <- factor(prefs, levels = 1:4)

# Create a table of counts
counts <- table(prefs_factor)
names(counts) <- c("Pepsi", "Sprite", "Fanta", "Mug")

# Draw a barplot
barplot(
  counts,
  main   = "Soda Preferences in Survey",
  xlab   = "Soda Type",
  ylab   = "Number of Students",
  ylim   = c(0, max(counts) + 2)
)

# Optionally, add the exact count on top of each bar
text(
  x      = seq_along(counts),
  y      = counts + 0.5,
  labels = as.integer(counts),
  cex    = 0.8
)