read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?") -> data 
        #read the data
used <- rbind(data[data$Date == "1/2/2007",],data[data$Date == "2/2/2007",]) 
        #select used data
paste(used[,1],used[,2]) -> a
strptime(a, "%d/%m/%Y %H:%M:%S") -> b
        #reformt date and time
png(filename = "plot2.png", width = 480, height = 480, units = "px", bg = "transparent")
plot(b,used[,3], type = "n", xlab = "", ylab= "Glable Activ Power (kilowatts)")
        #plot without point
lines(b,used[,3])
        #plot the line
dev.off()