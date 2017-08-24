Electric <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
Electric$Date <- as.Date(Electric$Date, "%d/%m/%Y")
Power <- Electric[Electric$Date >= as.Date("2007-02-01") &
                    Electric$Date <= as.Date("2007-02-02"), ]
rm(Electric)
hist(Power$Global_active_power, col = "red",
     xlab = "Global Active Power(kilowatts)", main = "Global Active Power")