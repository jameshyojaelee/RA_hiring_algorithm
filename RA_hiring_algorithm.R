# Create a dataset with random values


getwd()
setwd("C:/Users/james/Desktop/POLI170 Policy memo/RA_hiring_algorithm")
df <- read.csv("RA_dataset.csv")
df$ï..ID <- NULL


#linear regression
RA_linreg <- lm(df)
summary(RA_linreg)

pca <- prcomp(t(df))
