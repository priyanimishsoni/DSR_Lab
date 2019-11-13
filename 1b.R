getwd()
data1=read.delim("sell.csv", header=TRUE)
r=head(data1,3)
rate=c(3,4,5)
r$rate=rate
print(rate)
print(r$rate)
print(r)

write.table(data1,file="file2.csv", sep= "\t", row.names=FALSE)
