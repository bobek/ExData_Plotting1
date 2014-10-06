source("data.R")
png(filename = "plot3.png", width = 480, height = 480)

plot(data$DateTime, data$Sub_metering_1, ylab= "Energy sub metering", xlab="", type= "l", col="black")
lines(data$DateTime, data$Sub_metering_2, type= "l", col="red")
lines(data$DateTime, data$Sub_metering_3, type= "l", col="blue")

legend("topright", lty = 1, 
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))

dev.off()
