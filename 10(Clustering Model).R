wine <- read.csv("E:/wine.csv")
View(wine)
wine.f=wine
wine.f$Type<-NULL
View(wine.f)
wine.stand<-scale(wine.f[-1])
View(wine.stand)
results<-kmeans(wine.stand,2)
attributes(results)
results$centers
table(wine$X1,results$cluster)
