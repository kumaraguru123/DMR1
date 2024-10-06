library(MASS);library(bestglm);library(reshape2);library(corrplot)
data("survey")
str(survey)
#Variable removal
survey$Wr.Hnd<-NULL
survey$Clap<-NULL
survey$W.Hnd<-NULL
survey$Fold<-NULL
survey$Exer<-NULL
survey$Smoke<-NULL
survey$M.I<-NULL
survey<-na.omit(survey)
#Visualization
pc<-cor(survey[,2:5])
corrplot.mixed(pc)
corrplot.mixed(pc)
#Train test Split
set.seed(123)
ind<-sample(2,nrow(survey),replace=T,prob=c(0.7,0.3))
train<-survey[ind==1,]
train<-survey[ind==2,
              
              