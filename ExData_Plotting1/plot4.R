
## Preparing fourth plot having 4 different graphs
par(mar=c(4,4,2,1), cex=0.5)
par(mfrow=c(2,2), oma = c(0,0,2,0))
with(final_data, {
    plot(Global_active_power ~ Date_Time, type="l", ylab="Global Active Power", xlab="")
    plot(Voltage ~ Date_Time, type="l", ylab="Voltage", xlab="datetime")
    {plot(Sub_metering_1 ~ Date_Time, type="l", ylab="Energy sub metering", xlab="") 
    lines(Sub_metering_2 ~ Date_Time, col = 'Red')
    lines(Sub_metering_3 ~ Date_Time, col = 'Blue')} 
    legend("topright", col=c("black", "red", "blue"), lty = 1, lwd=2, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex=0.5)
    
    plot (Global_reactive_power ~ Date_Time, type="l", ylab="Global_reactive_power", xlab="datetime")
})


## Exporting the graphs to png file and closing png device
dev.copy(png, "plot4.png", height=480, width=480)
dev.off()