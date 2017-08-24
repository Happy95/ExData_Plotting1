Electric <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
Electric$Date <- as.Date(Electric$Date, "%d/%m/%Y")
Power <- Electric[Electric$Date >= as.Date("2007-02-01") &
                    Electric$Date <= as.Date("2007-02-02"), ]
rm(Electric)
DT <- paste(Power$Date, Power$Time)
DT <- strptime(DT, "%Y-%m-%d %H:%M:%S")
plot(DT, Power$Global_active_power, type = "l",
     ylab = "Global Active Power(kilowatts)", xlab = " ")