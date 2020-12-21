
png(file="plot4.png",width = 480,height = 480)

par(mfcol=c(2,2), mar = c(4,4,1,1), oma = c(0,0,0,0))

#plot1
with(data = subdata,plot(Global_active_power~Datetime,type="l",
                         ylab="Global Active Power",xlab=""))

#plot2
with(subdata, {
        plot(Sub_metering_1 ~ Datetime, type = "l", 
             ylab = "Global Active Power (kilowatts)", xlab = "",col="grey")
        lines(Sub_metering_2 ~ Datetime, col = 'Red')
        lines(Sub_metering_3 ~ Datetime, col = 'Blue')
})
legend("topright", col = c("grey", "red", "blue"), lty = 1, lwd = 1, 
       bty = "n",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#plot 3 voltage

plot(subdata$Voltage ~ subdata$Datetime, type = "l",
     ylab = "Voltage", xlab = "datetime")

#plot 4 reactive power
with(data = subdata,plot(Global_reactive_power~Datetime,type="l",
                        xlab="datetime"))

dev.off()