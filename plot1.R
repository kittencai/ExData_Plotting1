# Exploratory Data Analysis
# Project 1

# load data
setwd("F:/self-learning/data science/data exploratory/dataset/ExData_Plotting1")
data <- read.table("household_power_consumption.txt",skip=66636, nrows = 2880,sep=";",header=T)
header <- scan("household_power_consumption.txt", nlines = 1, sep = ";", what = character())
colnames(data)<-header

# plot 1
png(file="plot1.png")
    hist(data$Global_active_power,col="red",main=paste("Global Active Power"),xlab="Global Active Power (kilowatts)")
dev.off()