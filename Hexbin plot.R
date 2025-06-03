library(ggplot2)
library(hexbin)

# Hexbin Plot: Vehicles Involved vs Casualties
ggplot(data, aes(x = Number.of.Vehicles.Involved, y =Number.of.Casualties)) +
  stat_binhex(bins = 30) +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  theme_minimal() +
  labs(
    title = "Hexbin Plot: Vehicles Involved vs Casualties",
    x = "Number of Vehicles Involved",
    y = "Number of Casualties",
    fill = "Count"
  )
