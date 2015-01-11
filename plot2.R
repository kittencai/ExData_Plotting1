# Exploratory Data Analysis
# Project 1

# load data
setwd("F:/self-learning/data science/data exploratory/dataset/ExData_Plotting1")
data <- read.table("household_power_consumption.txt",skip=66636, nrows = 2880,sep=";",header=T)
header <- scan("household_power_consumption.txt", nlines = 1, sep = ";", what = character())
colnames(data)<-header

# plot2
png(file="plot2.png")
plot(data$date_time,data$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.off()
