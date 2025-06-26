library(ggplot2)
data(mpg)

p <- ggplot(mpg, aes(x = cty,
                     y = hwy,
                     size = cty,
                     color = manufacturer)) +
  geom_point(alpha = 0.7) +
  geom_smooth(se = FALSE) +
  labs(
    x = "Gas mileage for city driving",
    y = "Gas mileage on highway",
    title = "City vs Highway Mileage",
    subtitle = "Scatterplot with overlapping points",
    caption = "CIS 64H Final - Winter 2021"
  )

print(p)