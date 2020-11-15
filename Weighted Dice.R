#This is a script for the R weighted dice project
die<-1:6
roll<-fucntion(){
  #this fucntion randomly generates two numbers on a dice and gives out their sum
  die<-1:6
  dice<-sample(die,2,replace=TRUE)
  sum(dice)
}
#need to test the rolls of the die and visualise them
library(ggplot2)
rolls<-replicate(10000,roll()) #replicates the roll command 10 times
qplot(rolls, binwidth=0.25)#plots a histogram of rolls with binwidth .25

#create dice rolls with different weightings
roll_1<-function(){
  die<-1:6
  dice<-sample(die,2,replace=TRUE,prob = c(0.1,0.1,0.1,0.2,0.2,0.3))
  sum(dice)
}
rolls_1<-replicate(10000, roll_1())
qplot(rolls_1,binwidth=0.5)