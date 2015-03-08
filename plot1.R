read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?") -> data 
        #read the data
used <- rbind(data[data$Date == "1/2/2007",],data[data$Date == "2/2/2007",]) 
        #select used data
png(filename = "plot1.png", width = 480, height = 480, units = "px", bg = "transparent")
        #open png file
hist(used$Global_active_power, xlab = "Glable Activ Power (kilowatts)", col = "red", main = "Glable Active Power")
        #difine filename, xlable, color, and title
dev.off()