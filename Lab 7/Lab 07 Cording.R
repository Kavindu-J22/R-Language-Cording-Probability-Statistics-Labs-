#Lab 7 

getwd()
setwd("E:\\My Importent Campus Works\\2nd Year\\2nd Semmester\\1. Module Works(Y2S2)\\Probability & Statistics\\Lab 7")
getwd()

dataset7<-read.table("Data  7.txt",header = TRUE,sep = ",")
fix(dataset7)
dataset7

#Change Data Structure

newDataset7<-dataset7[[1]]
newDataset7

#Q1

mean(newDataset7)
var(newDataset7)
sd(newDataset7)

#Q2

sample1<-sample(newDataset7,5)
sample1
samples<-c()
n<-c()

for (i in 1:30) {
  sample1<-sample(newDataset7,5)
  samples<-cbind(samples,sample1)
  n<-c(n,paste("S",i))
}

colnames(samples)<-n
samples


sample.means<-colMeans(samples)
sample.means


sample.vars<-apply(samples,2,var)
sample.vars


#Q3

mean(sample.means)
var(sample.vars)


#Q4

mean(newDataset7)
mean(sample.means)

#This two taluses are approximately equal.

#Q5

var(newDataset7)
var(sample.vars)

#This tow values are not equal.Because Sample Size is too small.









