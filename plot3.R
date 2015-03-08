read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?") -> data 
        #read the data
used <- rbind(data[data$Date == "1/2/2007",],data[data$Date == "2/2/2007",]) 
        #select used data
paste(used[,1],used[,2]) -> a
strptime(a, "%d/%m/%Y %H:%M:%S") -> b
        #reformt date and time
png(filename = "plot3.png", width = 480, height = 480, units = "px", bg = "transparent")
plot(b,used[,7], type = "n", xlab = "", ylab= "Energy sub metering")
lines(b,used[,7], col = "black")
lines(b,used[,8], col = "Red")
lines(b,used[,9], col = "blue")
        #add line
legend("topright", 
                #place
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
                #text
       lty = (c(1,1,1)),
                #line
       col = c("black","red","blue")
                #color
       )
dev.off()
