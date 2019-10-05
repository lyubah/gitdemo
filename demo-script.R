# Title:LAB 05, Questioin 5:  R script file
# Description: this is for lab 05
# Input(s): what are the main inputs (list of inputs)
# Output(s): what are the main outputs (list of outputs)
# Author(s): Lubah Nelson
# Date:October 4, 2019
#=======================================================

library(dplyr)
library(ggplot2)

getwd()
setwd("/Users/Lerberber/Desktop/gitdemo/data")

dat<-  read.csv(file="nba2018-players.csv", header=TRUE, sep=",")
dat1<-select(dat, team, player, salary)
warriors<- arrange(filter(dat1, team=="GSW"), desc(salary))
write.csv(warriors, file="warriors.csv", row.names = FALSE)
dat2<-filter(dat, team=="LAC")

getwd()
setwd("/Users/Lerberber/Desktop/gitdemo/output")


sink(file= "data-structure.txt")
str(dat)
sink()

sink(file="summary-warriors.txt")
summary(warriors)
sink()

sink(file= "summary-lakers.txt")


