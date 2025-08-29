#1
setwd("C:/Users/IT24100755/Desktop/IT24100755")

#2
`branch data` <- read.table("Exercise.txt", header = TRUE, sep = ",")

#3
boxplot(`branch data`$Sales_X1, main = "Boxplot of Sales", ylab = "Sales")

#4
summary(`branch data`$Advertising_X2)
IQR(`branch data`$Advertising_X2)

#5
find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR_val <- Q3 - Q1
  lower_bound <- Q1 - 1.5 * IQR_val
  upper_bound <- Q3 + 1.5 * IQR_val
  x[x < lower_bound | x > upper_bound]
}
find_outliers(`branch data`$Years_X3)
