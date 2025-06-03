ggplot(data, aes(x = `Driver.Age`, y = `Number.of.Casualties`)) +
  stat_density_2d(aes(fill = after_stat(level)), geom = "polygon", color = "white", alpha = 0.8) +
  scale_fill_gradientn(
    colors = c("#D6EAF8", "#85C1E9", "#2E86C1", "#1B4F72"),
    name = "Density"
  ) +
  theme_minimal() +
  labs(
    title = "Filled Density Plot: Driver Age vs Number of Casualties",
    x = "Driver Age",
    y = "Number of Casualties"
  ) +
  theme(
    plot.title = element_text(size = 14, face = "bold"),
    axis.title = element_text(size = 12),
    legend.title = element_text(size = 10),
    legend.text = element_text(size = 9)
  )
