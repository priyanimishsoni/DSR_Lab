
getwd()

data1<-read.csv("C:/Users/I300/Desktop/dsrlab/sat.csv")
fw<-data.frame(data1)

fw.lm=lm(SAT~GPA,data=fw)
summary(fw.lm)
names(fw.lm)                                    
fw.lm$coefficients 

newypred<-fitted(fw.lm)                   
newypred

confint(fw.lm)  
confint(fw.lm,parm=c('(Intercept)','GPA'),level =0.9)

fitted(fw.lm)
residuals(fw.lm) 
plot(fw$SAT,fw$GPA,col="red")
coef(fw.lm)
 
abline(coef(fw.lm),lty=1,col="blue")

plot(fw.lm,which=1)  
