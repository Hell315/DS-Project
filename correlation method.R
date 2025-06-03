# Feature Selection Methods
# 1. Filter Method: Correlation-based selection
library(caret)
highly_correlated <- findCorrelation(corr_matrix, cutoff = 0)
selected_features_filter <- colnames(num_data)[-highly_correlated]
print(selected_features_filter)