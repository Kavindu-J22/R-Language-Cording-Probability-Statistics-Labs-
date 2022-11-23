getwd()
setwd("E:\\My Importent Campus Works\\2nd Year\\2nd Semmester\\1. Module Works(Y2S2)\\Probability & Statistics\\Lab 1")
getwd()
setwd("E:\\My Importent Campus Works\\2nd Year\\2nd Semmester\\1. Module Works(Y2S2)\\Probability & Statistics\\Lab 2")
getwd()

#Lab 02

###Control Statements###
# If condition

x<-4
x

if(x>0){
  print("Positive number")
}

# If Else condition

x<-4
y<--2

if(y>0){
  print("positive number")
}else{
  print("negetive number")
}


## Nested If…Else condition

x<-0

if(x>0){
  print("Positive number")
}else if(x<0){
  print("Negetive number")
}else{
  print("Zero")
}

  #Activity.2

x<-5
y<--1
z<--1

if(x>0){
  if(y==0){
    if(z<0){
      print("1st Program Success..!")
    }
  }else{
    if(z<0){
      print("2nd Program Success..!")
    }
  }
}else if(x<0){
  print("2nd step successed..!")
}else{
  print("Zero(3rd step also successed..!")
}

#New work Load

getwd()


600%/%4

gender<-c(1,0,1,0,0,1)
gender

gender<-factor(gender,c(0,1),c("male","female"))
gender


marks<-c(35,55,65,74,100)

marks<-factor(marks,c(35,55,65,74,100),c("W","S","C","B","A"))

marks

a<-c(1,2,3,4,5)
p<-2002
q<-01
r<-22
b<-"Kavindu"

My_new_List<-list(a,p,q,r,b)
My_new_List

mymetrix<-matrix(c(1,2,3,4,5,6),nrow = 3,ncol = 2,byrow = TRUE)
mymetrix

mymatrix2<-matrix(c(1:10),nrow = 2,ncol = 5,byrow = FALSE)
mymatrix2


marks<-c(98,98,97,96)
name<-c("Kavindu","Pasindu","Sachitha","Amila")

Mydataframe<-data.frame(marks,name)
Mydataframe

 
setwd("E:\\My Importent Campus Works\\2nd Year\\2nd Semmester\\1. Module Works(Y2S2)\\Probability & Statistics\\Lab 2")
getwd()

#Lab 2(again)

###Control Statements###
# If condition

x<-4
x

if(x>0){
  print("Positive number")
}

# If Else condition

x<-4

y<--2

if(y>0){
  print("positive number")
}else{
  print("negetive number")
}


## Nested If…Else condition

x<-0

if(x>0){
  print("Positive number")
}else if(x<0){
  print("Negetive number")
}else{
  print("Zero")
}

#Activity.2

x<-5
y<-0
z<--1

if(x>0){
  if(y==0){
    if(z<0){
      print("1st Program Success..!")
    }
  }else{
    if(z>0){
      print("2nd Program Success..!")
    }
  }
}else if(x<0){
  print("2nd step successed..!")
}else{
  print("Zero(3rd step also successed..!")
}

#new condition

p<--1
q<-2
r<-3

if(p<0){
  print("It's okey")
}
#while loop

n<-1

while(n<6){
  print(n)
  n=n+1
}

#2

num<-1
val<-10

while(num<val){
  print(num)
  num= num+1
}

#for loop

for(qa in 1:10){
  print(qa)
  
}


##CSV and text file##

myData<-read.csv("DATA 2.csv")
myData

fix(myData)


mydata2<-read.table("data.txt",header = TRUE,sep = ",")
mydata2
fix(mydata2)


mydata3<-read.table("data.txt",header = TRUE,sep = "")
mydata3
fix(mydata3)


###write data in to a file###

Employee<-c("Kamal","Amal","Vimal","Sunil")
Salary<-c(40000,50000,60000,70000)
class<-c("A","A","B","c")

NewDataFrame<-data.frame(Employee,Salary,class)
NewDataFrame

write.csv(NewDataFrame,"wretten data set1.csv")
write.table(NewDataFrame,"wretten data set1.txt")

#Functions

function_1<-function(a,b){
  y<-a+b
  print(y)
  # or y
}

function_1(4,5)
  
#Q1

quadratic<-function(a,b,c){
  x1=(-b + sqrt(b^2-4*a*c))/2*a
  x2=(-b - sqrt(b^2-4*a*c))/2*a
  print(x1)
  print(x2)
}

quadratic(2,3,1)
#real roots of the quadratic equation  = 2x^2 + 3x + 1 = 0

#Q4

vect1<-c(1:20)
sum(vect1%%3==0)


#Q6

newData<-c(45,34,21,65,43,87,65)
maxval<-0
maxIndex<-0

for(i in 1:length(newData)){
  if(maxval<newData[i]){
    maxval<-newData[i]
    maxIndex<-i
  }
}

maxval
maxIndex


#Q7

which.max(newData)

#Q8

A<-0

MoneyOwned<-function(p,r,n){
  for(i in 1:n){
    A = p*((1+(r/100))^i)
    print(A)
  }
}

MoneyOwned(5000,11.5,15)

setwd("E:\\My Importent Campus Works\\2nd Year\\2nd Semmester\\1. Module Works(Y2S2)\\Probability & Statistics\\Lab 3")
getwd
getwd()

#Lab 3

#Q1

dataset3<-read.csv("DATA 3.csv",header = TRUE)
dataset3

fix(dataset3)

names(dataset3)<-c("Age","Gender","Acomodaton")
fix(dataset3)

dataset3$Gender<-factor(dataset3$Gender,c(1,2),c("Male","Female"))
fix(dataset3)

dataset3$Acomodaton<-factor(dataset3$Acomodaton,c(1,2,3),c(" Stays at Home","Boarded Students","Lodging"))
fix(dataset3)

attach(dataset3)


#Q2
#Frequency Table

gender.freq<-table(Gender)
acomodaton.freq<-table(Acomodaton)

gender.freq
acomodaton.freq

#Pie Chart

pie(gender.freq,"Pie Chart for Gender")
pie(acomodaton.freq,"Pie Chart for Accomodation")

#Bar plot

barplot(gender.freq,main = "Barplot for Gender",ylab = "Frequency")
abline(h=0)

barplot(acomodaton.freq,main = "Barplot for Accomodation",ylab = "Frequency")
abline(h=0)

#boxplot

boxplot(Age,main = "Boxplot for Age",xlab = "age",horizontal = TRUE,outpch = 8)


#Q3

#Two-Way frequency Table

gender_acc.freq<-table(Gender,Acomodaton)
gender_acc.freq

#Stack Bar Chart

barplot(gender_acc.freq,main = "Gender and Accomodation",legend=rownames(gender_acc.freq))
abline(h=0)


#Clustered bar Chart

barplot(gender_acc.freq,beside = TRUE,main = "Gender and Acomodation Clustered",legend=rownames(gender_acc.freq))
abline(h=0)

#Q4
#Side By Side Box plot

boxplot(Age~Gender,main = "boxplot for Age by Gender",xlab = "Gender",ylab = "Age")

boxplot(Age~Acomodaton,main = "Boxplot for Age By Accomodation",xlab = "Accomodation",ylab = "Age",outpch = 20)


#Q5

xtabs(Age~Gender+Acomodaton)/gender_acc.freq





























