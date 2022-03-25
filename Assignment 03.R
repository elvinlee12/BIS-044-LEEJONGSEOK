getwd()
DF <- read.csv("Yellow_Sample.csv")

DF<-DF[which(DF$trip_distance > 10),]



mean(DF$trip_distance)


DF[,"total_amount"]

#-10 trip_distance >0, -5 trip_distance<=10, -10 mean(total_amount)