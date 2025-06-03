library(tidyverse)
library(caret)
library(mlbench)
library(glmnet)
library(ggcorrplot)

data <- read.csv("C:/Users/Adit Gupta/OneDrive/Desktop/accident_prediction_india.csv")
str(data)
summary(data)
