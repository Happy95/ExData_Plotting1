Electric <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
Electric$Date <- as.Date(Electric$Date, "%d/%m/%Y")
Power <- Electric[Electric$Date >= as.Date("2007-02-01") &
                    Electric$Date <= as.Date("2007-02-02"), ]
rm(Electric)
DT <- paste(Power$Date, Power$Time)
DT <- strptime(DT, "%Y-%m-%d %H:%M:%S")
plot(DT, Power$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = " ")
lines(DT, Power$Sub_metering_2, type = "l", col = "red")
lines(DT, Power$Sub_metering_3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1   ", "Sub_metering_2   ", "Sub_metering_3   "),
       col = c("black", "red", "blue"), lty = 1)