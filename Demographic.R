setwd("/Users/cuiying/Desktop/R")

data <- read.csv("P2-Demographic-Data.csv")

str(data)
summary(data)

data$Income.Group <- factor(data$Income.Group)
data$Country.Name <- factor(data$Country.Name)
data$Country.Code <- factor(data$Country.Code)
levels(data$Income.Group)

library(ggplot2)
qplot(data=data, x=Internet.users, y=Birth.rate, size=I(4))
qplot(data=data, x=Income.Group, y=Birth.rate, size=I(3), color=I("blue"))
qplot(data=data, x=Income.Group, y=Birth.rate, geom="boxplot")
qplot(data=data, x=Internet.users, y=Birth.rate, size=I(4), colour=Income.Group)

qplot(data=merged, x=Internet.users, y=Birth.rate, colour=Region, 
      size=I(2), shape=I(19), alpha=I(0.7), main="Birth Rate vs Internet Users")
