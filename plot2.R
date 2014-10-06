source("data.R")
png(filename = "plot2.png", width = 480, height = 480)

plot(data$DateTime, data$Global_active_power, ylab= "Global Active Power (kilowatts)", xlab="", type= "l")

dev.off()
