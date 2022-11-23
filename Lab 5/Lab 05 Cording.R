#LAb 05
getwd()
setwd("E:\\My Importent Campus Works\\2nd Year\\2nd Semmester\\1. Module Works(Y2S2)\\Probability & Statistics\\Lab 5")
getwd()


#q1

dataset5<-read.table("Data.txt",header = TRUE,sep = ",")
fix(dataset5)
dataset5


names(dataset5)<-c("x1","x2")
dataset5

attach(dataset5) #run twist to attach data permanent

#q2

hist(x2,main = "histrogram for Number of shareholders")
abline(h=0)

Histrogram1<-hist(x2,main ="histrogram for Number of shareholders",breaks =(seq(130,270,length = 8)),right = FALSE)
abline(h=0)



#Q3
#1st Step - identify the break points of each classes

breaks<-round(Histrogram1$breaks)
breaks

#2nd Step - identify the frequancys of each lasses

frequn<-Histrogram1$counts
frequn

#3rd Step - identify the mid points of each classes

Mids<-Histrogram1$mids
Mids

#4th step - Create empty vector

classes<-c()

for (i in 1:length(breaks)-1) {
  classes[i]<-paste0("{",breaks[i],",",breaks[i+1],"}")
}

cbind(classes=classes,Frequancy=frequn)

#Q4
# frequency polygon in same plot

lines(Histrogram1$mids,frequn)

# frequency polygon in new plot

plot(Mids,frequn,type = "l",main = "Frequancy Poligan in new ploat",xlab = "Shareholders",ylab = "Frequancy new",ylim = c(0,max(frequn)))

#Q5

cumsum(frequn)
 #or
cum.frequn<-cumsum(frequn)
cum.frequn


new<-c()

for(i in 1:length(breaks)){
  if(i==1){
    new[i]=0
    
  }else{
    new[i]=cum.frequn[i-1]
  }
}

plot(breaks,new,type = "o",main = "Frequancy Poligan in cumilative Frequancy",xlab = "Shareholders",ylab = "Cumilative Frequancy",ylim = c(0,max(cum.frequn)))

cbind(Upper=breaks,cumilative_freq=new)

#Q6








































