source("data.R")
png(filename = "plot4.png", width = 480, height = 480)

par(mfrow=c(2,2))

plot(data$DateTime, data$Global_active_power, ylab= "Global Active Power", xlab="", type= "l")

plot(data$DateTime, data$Voltage, ylab="Voltage", xlab="datetime", type="l")

plot(data$DateTime, data$Sub_metering_1, ylab= "Energy sub metering", xlab="", type= "l", col="black")
lines(data$DateTime, data$Sub_metering_2, type= "l", col="red")
lines(data$DateTime, data$Sub_metering_3, type= "l", col="blue")
legend("topright", lty = 1, 
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))

plot(data$DateTime, data$Global_reactive_power, ylab="Global_reactive_power", xlab="datetime", type="l")

dev.off()
