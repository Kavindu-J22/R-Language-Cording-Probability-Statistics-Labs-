#Lab 04
getwd()
setwd("E:\\My Importent Campus Works\\2nd Year\\2nd Semmester\\1. Module Works(Y2S2)\\Probability & Statistics\\Lab 4")
getwd()

#Q1

dataset4<-read.table("DATA 4.txt",header = TRUE,sep = "")
fix(dataset4)
dataset4

names(dataset4)<-c("Teams","Team Attendance","Team Salary","Years")
dataset4

attach(dataset4)

#Q2

boxplot(`Team Attendance`,main = "Boxplot for Attendance",outline = TRUE,xlab = "Attendance",horizontal = TRUE)
boxplot(`Team Salary`,main = "Boxplot for Salary",outline = TRUE,xlab = Salary,horizontal = TRUE)
boxplot(Years,main = "Boxplot for Years",outline = TRUE,xlab = "Years",horizontal = TRUE)


hist(`Team Attendance`,main = "Histrogram for Attendance",ylab = "Frequancy")
abline(h=0)
hist(`Team Salary`,main = "Histrogram for Salary",ylab = "Frequancy")
abline(h=0)
hist(Years,main = "Histrogram for Years",ylab = "Frequancy")
abline(h=0)

#Stem and Leaf

stem(`Team Attendance`)
stem(`Team Salary`)
stem(Years)

#Mean

mean(`Team Attendance`)
mean(`Team Salary`)
mean(Years)

#Median

median(`Team Attendance`)
median(`Team Salary`)
median(Years)

#Standard Deviation

sd(`Team Attendance`)
sd(`Team Salary`)
sd(Years)

#summery of all quantile value
summary(`Team Attendance`)

#quantile value

quantile(`Team Attendance`)

#1st quantile value

quantile(`Team Attendance`)[2] #1st
quantile(`Team Attendance`)[4] #3rd

#Interquartile Range

IQR(`Team Attendance`)
IQR(`Team Salary`)
IQR(Years)

#Q3
#Write a function to find the modes of a given set of values. Check the function by finding the mode of the variable “Years”.

get.modes<-function(y){
  counts<-table(y)
  names(counts)[counts==max(counts)]
}

get.modes(Years)

#Q4

get.outliers<-function(z){
  q1<-quantile(z)[2]
  q3<-quantile(z)[4]
  iqr<-q3-q1
  ub<-q3+1.5*iqr
  lb<-q1-1.5*iqr
  print(paste("Upper Bound - ",ub))
  print(paste("Lower Bound - ",lb))
  print(paste("Outliers - ",paste(sort(z[z<lb|z>ub]),collapse = ",")))
}

get.outliers(Years)
get.outliers(`Team Attendance`)
get.outliers(`Team Salary`)















