# 2. Wrapper Method: Recursive Feature Elimination (RFE)
print(names(data))
"Number.of.Casualties" %in% names(data)
num_data <- data[sapply(data, is.numeric)]
str(num_data)
"Number.of.Casualties" %in% names(num_data)
num_data <- na.omit(num_data)
print(dim(num_data))

outcome_var <- "Number.of.Casualties"
predictors <- setdiff(names(num_data), outcome_var)
x <- num_data[, predictors]
y <- num_data[[outcome_var]]

cat("x dim: ", dim(x), "\n")
cat("y length: ", length(y), "\n")

library(caret)
library(randomForest)
set.seed(123)
control <- rfeControl(functions = rfFuncs, method = "cv", number = 5)
rfe_results <- rfe(x = x, y = y, sizes = 1:5, rfeControl = control)
selected_features_rfe <- rfe_results$optVariables
print("Selected features:")
print(selected_features_rfe)