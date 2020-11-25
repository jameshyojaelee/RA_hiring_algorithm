# Create a dataset with random values

# Import Dataset

getwd()
setwd("C:/Users/james/Desktop/POLI170 Policy memo/RA_hiring_algorithm")
df <- read.csv("RA_dataset.csv", fileEncoding="UTF-8-BOM")
rownames(df) <- df[,1]
head(df)


# convert catergorical values into factors
#df$race <- factor(unique(df$race))

df$race <- NULL
df$major <- NULL

RA_pca <- prcomp(df)
summary(RA_pca)

# Plot PC1 vs PC2
plot(RA_pca$x[,1], RA_pca$x[,2], xlab="PC1", ylab="PC2", xlim=c(-270,500))
text(RA_pca$x[,1], RA_pca$x[,2], colnames(x))
