library(tidyverse)

polls <- readRDS("C:/Users/pc/Desktop/R/lab10_Jackiewang/polls_prepared.rds")

polls_weekly <- polls %>% filter(Swing == TRUE) %>% 
  select(State, EndDate, Gap) %>% 
  unique()

get_next_sunday <- function(row) {
  date <- as.Date(row[2])
  day_of_week <- as.integer(format(date, "%w"))
  next_sunday <- ""
  if(day_of_week == 0) {
    next_sunday <- date
  } else {
    next_sunday <- date + (7 - day_of_week)
  }
  return(next_sunday)
}

polls_weekly <- polls_weekly %>% 
  mutate(
    Week = apply(., 1, get_next_sunday),
    Week = as.Date(Week, origin = "1970-01-01")
  )

polls_weekly <- polls_weekly %>% 
  filter(Week > as.Date("2016-09-01")) %>% 
  group_by(State, Week) %>% 
  summarize(MeanGap = mean(Gap)) %>% 
  ungroup()

polls_weekly <- polls_weekly %>% 
  mutate(Advantage = ifelse(MeanGap >= 0, "Clinton", "Trump"),
         MeanGap = abs(round(MeanGap, 1)))

ggplot(polls_weekly, aes(x = Week, y = State)) +
  geom_tile(aes(fill = Advantage, color = "", alpha = MeanGap)) +
  geom_text(aes(label = MeanGap, color = "")) +
  scale_fill_manual(values = c("blue","red")) + 
  scale_color_manual(values = "white", guide = "none") +
  labs(title = "Weekly Gap for the Swing States") +
  theme(plot.title = element_text(hjust = 0.5), 
        legend.position = "bottom") + 
  scale_alpha(range = c(0.25,0.95)) + 
  guides(alpha = "none")
