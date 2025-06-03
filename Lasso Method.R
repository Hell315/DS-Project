# 3. Embedded Method: Lasso Regression
library(glmnet)
outcome_var <- "Number.of.Fatalities"
predictors <- setdiff(names(num_data), outcome_var)

x <- as.matrix(num_data[, predictors])
y <- num_data[[outcome_var]]

set.seed(123)
lasso_model <- cv.glmnet(x, y, alpha = 1)
plot(lasso_model)
best_lambda <- lasso_model$lambda.min
cat("Best lambda:", best_lambda, "\n")
lasso_coef <- coef(lasso_model, s = "lambda.min")
print(lasso_coef)

selected_features_lasso <- rownames(lasso_coef)[which(lasso_coef != 0)]
selected_features_lasso <- setdiff(selected_features_lasso, "(Intercept)")

cat("Selected features by LASSO:\n")
print(selected_features_lasso)
