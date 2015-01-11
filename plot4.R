# Exploratory Data Analysis
# Project 1

# load data
setwd("F:/self-learning/data science/data exploratory/dataset/ExData_Plotting1")
data <- read.table("household_power_consumption.txt",skip=66636, nrows = 2880,sep=";",header=T)
header <- scan("household_power_consumption.txt", nlines = 1, sep = ";", what = character())
colnames(data)<-header

# plot4
png(file="plot4.png")
par(mfrow=c(2,2))
with(data,{
    plot(date_time,Global_active_power,type="l",col="black",ylab="Global Active Power",xlab="")
    plot(date_time,Voltage,type="l",col="black",ylab="vlotage",xlab="datatimes")
    plot(date_time,Sub_metering_1,type="l",col="black",ylab="Energy sub metering",xlab="")
    lines(date_time,Sub_metering_2,type="l",col="red",ylab="",xlab="")
    lines(date_time,Sub_metering_3,type="l",col="blue",ylab="",xlab="")
    legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = c(1, 1, 1), col = c("black", "red", "blue"),cex=0.8)
    plot(date_time,Global_reactive_power,type="l",col="black",ylab="Global_reactive_power",xlab="")
})
dev.off()


