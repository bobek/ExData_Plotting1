# Read only the relevant part of quite large dataset
data.head <- read.table("household_power_consumption.txt", sep=";", na.strings= "?", nrows=1)
data.src <- read.table("household_power_consumption.txt", sep=";", na.strings= "?", skip=66630, nrows=2900)
data <- subset(data.frame(data.src), as.Date(V1) == '01/02/2007' | as.Date(V1) == '02/02/2007')

# Set the column names to something meaningful
colnames(data) <- as.vector(t(data.head))

# Parse Date + Time and make a new column called DateTime
data$DateTime <- sapply(data, function(x) paste(data$Date, data$Time, sep=" "))[,1]
data$DateTime <- strptime(data$DateTime, "%d/%m/%Y %H:%M:%S")

str(data)
summary(data)
