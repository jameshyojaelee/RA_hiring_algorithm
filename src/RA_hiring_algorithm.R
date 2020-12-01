# Create a dataset with random values

# Import Dataset

getwd()
setwd("C:/Users/james/Desktop/POLI170 Policy memo/RA_hiring_algorithm")
df <- read.csv("RA_dataset.csv", fileEncoding="UTF-8-BOM")
rownames(df) <- df[,1]
head(df)

df$scoreMean <- rowMeans(df[,9:58])

#hypothesis 1: higher gpa = higher score in evaluation
t.test(df$GPA, df$scoreMean)

#make subset without categorical values
drops <- c("race", "major")
df_numeric <- df[, !names(df) %in% drops]


# PCA without normalization (what NOT to do)
RA_pca <- prcomp(df_numeric)
summary(RA_pca)

# Plot PC1 vs PC2
plot(RA_pca$x[,1], RA_pca$x[,2], xlab="PC1", ylab="PC2", xlim=c(-270,500))
text(RA_pca$x[,1], RA_pca$x[,2], colnames(x))
