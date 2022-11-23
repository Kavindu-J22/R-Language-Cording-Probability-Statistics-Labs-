print(100:150)
#This is my frist Rscript
getwd()
setwd("E:\\My Importent Campus Works\\2nd Year\\2nd Semmester\\1. Module Works(Y2S2)\\Probability & Statistics\\Lab 1")
getwd()

?solve
help("data.frame")

600%%2
601%%2
601%%3


600%/%2
601%/%2


#Fundamental Data Objects
  #vector

w<-c(1:5)
W<-c(1:5)


a<-c(1:5)
a
w

B<-c(1:10)
B

class(B)

D<-c(1,2,3,4,5)
D
d

class(D)


f<-c(1.1:1.9)
f
class(f)



  #factor

gender<-c(1,1,0,1,0,1,0,0,1)
gender #vector

Male_or_Female<-factor(gender,c(1,0),c("Male","Female"))
Male_or_Female

class(gender)
class(Male_or_Female)

    #Activity.2

grade<-c(75,60,55,35,75,75,35,60,55)
grade

Pass_or_Fail<-factor(grade,c(75,60,55,35),c("A","B","C","S"))
Pass_or_Fail

class(Pass_or_Fail)

  #list

a<-c(1,2,3,4)
x<-(10:15)
y<-"JAYE"
z<-22
q<-99.9

MydataList<-list(x,y,z,q,a)
MydataList


  #Matrix

Mymatrix<-matrix(c(1,2,3,4),nrow = 2,ncol = 2,byrow = TRUE)
Mymatrix

class(Mymatrix)

    #Activity.2

Mymatrix2<-matrix(c(1:4),nrow = 2,ncol = 2,byrow = FALSE)
Mymatrix2

class(Mymatrix2)


  #Data Frame 

height<-c(180,178,154,145)
weight<-c(76,65,58,55)
name<-c("Kavindu","Pasindu","Sachitha","Amila")

Mydata_Set<-data.frame(name,height,weight)
Mydata_Set

