read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?") -> data 
        #read the data
used <- rbind(data[data$Date == "1/2/2007",],data[data$Date == "2/2/2007",]) 
        #select used data
paste(used[,1],used[,2]) -> a
strptime(a, "%d/%m/%Y %H:%M:%S") -> b
        #reformt date and time
png(filename = "plot4.png", width = 480, height = 480, units = "px", bg = "transparent")
par(mfcol = c(2,2))
        #set mfcol
        plot(b,used[,3], type = "n", xlab = "", ylab= "Glable Activ Power (kilowatts)")
        lines(b,used[,3])
                #plot Glable Activ Power
        plot(b,used[,7], type = "n", xlab = "", ylab= "Energy sub metering")
        lines(b,used[,7], col = "black")
        lines(b,used[,8], col = "Red")
        lines(b,used[,9], col = "blue")
        legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = (c(1,1,1)),col = c("black","red","blue"),bty = "n")
                #plot sub metering, the type of legend box set to "n"
        plot(b,used[,5], type = "n", xlab = "datetime", ylab= "Voltage")
        lines(b,used[,5])
                #plot Voltage
        plot(b,used[,4], type = "n", xlab = "datetime", ylab= "Global_reactive_power")
        lines(b,used[,4])
                #plot Global_reactive_power
dev.off()     