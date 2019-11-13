library("rpart")
library("rpart.plot")
decision<-read.csv("C:/Users/I300/Desktop/dsrlab/NB.csv",header=TRUE)
decision
desicion<-as.data.frame(decision)
summary(decision)
fit=rpart(decision$Play ~ decision$Outlook+decision$Humidity +decision$Wind,method="class",data=decision,control=rpart.control(minsplit=1),parms=list(split='information'))
fit
str(fit)
rpart.plot(fit,type=4,extra=1)
rpart.plot(fit,type=4,extra=2,clip.right.labs=FALSE,varlen=0,faclen=0)
