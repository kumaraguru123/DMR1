library(ggplot2)
input<-mtcars[,c('mpg','cyl')]
print(head(input))
dat<-ggplot2::mpg
summary(dat$hwy)
min(dat$hwy)
max(dat$hwy)
range(dat$hwy)
hist(dat$hwy,
     xlab="hwy",
     main="Histogram of hwy",
     breaks=sqrt(length(dat$hwy))
)