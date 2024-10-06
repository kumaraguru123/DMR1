library(ggplot2)
df<-read.csv("https://raw.githubusercontent.com/roualdes/data/refs/heads/master/donkeys.csv")
fit<-lm(Height~Girth,data=df)
coef(fit)
beta<-coef(fit)
beta*c(1,90)
sum(beta*c(1,90))
yhat_90<-sum(beta*c(1,90))
(yhat_109<-sum(beta*c(1,109)))
head(model.matrix(fit))
X<-model.matrix(fit)
yhat<-apply(X,1,function(row) sum(beta*row))
yhat[1]
yhat_90
yhat[4]
yhat_109

