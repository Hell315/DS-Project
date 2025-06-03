#Histogram: Number of Fatalities vs Alcohol Involvement
ggplot(data, aes(x = Number.of.Fatalities, fill = factor(Alcohol.Involvement))) +
  geom_histogram(position = "identity", alpha = 0.5, bins = 10) +
  theme_minimal() +
  labs(
    title = "Histogram: Fatalities by Alcohol Involvement",
    x = "Number of Fatalities",
    y = "Count",
    fill = "Alcohol Involvement"
  ) +
  scale_fill_manual(values = c("#0073C2", "#E46726"))

