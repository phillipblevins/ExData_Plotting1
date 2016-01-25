


hpc <- read.csv("household_power_consumption.txt", sep=";", na.strings=c("","?","NA"))

twodayhpc <- subset(hpc, hpc$Date=="1/2/2007" | hpc$Date=="2/2/2007")



png(filename = "plot1.png", width = 504, height = 504)


hist(twodayhpc$Global_active_power, col="red", xlab="Globel Active Power(kilowatts)", main= "Globel Active Power")
dev.off()



    
