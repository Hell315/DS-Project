# 3. Line Plot: Speed Limit vs  Average number of Fatalities
library(dplyr)
library(ggplot2)

avg_fatalities <- data %>%
  group_by(Speed.Limit..km.h.) %>%
  summarise(Avg_Fatalities = mean(Number.of.Fatalities, na.rm = TRUE))
ggplot(avg_fatalities, aes(x = Speed.Limit..km.h., y = Avg_Fatalities)) +
  geom_line(color = "#E46726") +
  theme_minimal() +
  labs(
    title = "Line Plot: Speed Limit vs Average Number of Fatalities",
    x = "Speed Limit (km/h)",
    y = "Average Number of Fatalities"
  )
