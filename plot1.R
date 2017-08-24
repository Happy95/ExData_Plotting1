Electric <- read.csv("household_power_consumption.csv", na.strings = "?")
Electric$Date <- as.Date(Electric$Date, "%d/%m/%Y")
Power <- Electric[Electric$Date >= as.Date("2007-02-01") &
                    Electric$Date <= as.Date("2007-02-02"), ]
rm(Electric)
hist(Power$Global_active_power, col = "red",
     xlab = "Global Active Power(kilowatts)", main = "Global Active Power")