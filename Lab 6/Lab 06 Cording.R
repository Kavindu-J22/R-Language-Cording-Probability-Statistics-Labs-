#Lab 06

getwd()
setwd("E:\\My Importent Campus Works\\2nd Year\\2nd Semmester\\1. Module Works(Y2S2)\\Probability & Statistics\\Lab 6")
getwd()

#Q1

dataset6<-read.table("Forest.txt",header = TRUE,sep = ",")
dataset6
fix(dataset6)
attach(dataset6)

#Q2

str(dataset6)

#Q3

#Answer = 517 Observation

#Q4

max(wind)
min(wind)

#Q5 (Fivenumber Summary)

summary(temp)

#Q6

boxplot(wind,horizontal = TRUE,outline = TRUE,pch = 18)
#Answer = outliers

#Q7

# Answer = Negative Distribution

#Q8

median(temp)

#Q9

mean(wind)
sd(wind)

#Q10

IQR(wind)

#Q11

freq<-table(day,month)
freq
# Answer = 21

#Q12

mean(temp[month=="sep"])
#answer = 19.61221

#Q13

countTbl<-table(day[month=="jul"])
names(countTbl[countTbl==max(countTbl)])
countTbl











