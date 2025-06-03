#Bar Plot: Average Fatalities vs Road Type
library(dplyr)

data %>%
  group_by(Road.Type) %>%
  summarise(Mean_Fatalities = mean(Number.of.Fatalities)) %>%
  ggplot(aes(x = Road.Type, y = Mean_Fatalities, fill = Road.Type)) +
  geom_bar(stat = "identity", alpha = 0.8) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(
    title = "Average Fatalities by Road Type",
    x = "Road Type",
    y = "Average Number of Fatalities"
  ) +
  scale_fill_brewer(palette = "Set2")
