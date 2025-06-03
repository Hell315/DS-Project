data <- na.omit(data)

#EDA
num_data <- data %>% select(where(is.numeric))
corr_matrix <- cor(num_data)