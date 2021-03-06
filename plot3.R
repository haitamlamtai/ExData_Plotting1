png(file="plot3.png",width = 480,height = 480)

with(subdata, {
        plot(Sub_metering_1 ~ Datetime, type = "l", 
             ylab = "Global Active Power (kilowatts)", xlab = "",col="grey")
        lines(Sub_metering_2 ~ Datetime, col = 'Red')
        lines(Sub_metering_3 ~ Datetime, col = 'Blue')
        })
legend("topright", col = c("grey", "red", "blue"), lty = 1, lwd = 1, 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()