getwd()
setwd("C:/Users/I300/Desktop/dsrlab")
data1<-read.csv("sell.csv")
data1
summary(data1)

plot(data1$Sell,data1$Buy)

