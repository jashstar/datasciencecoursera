
par(mar=c(4,4,2,2))
par(mfrow=c(1,1))

## Plotting a line graph for the 3 sub metering variables and adding a legend
with(final_data, {
  
  plot(Sub_metering_1 ~ Date_Time, type="l", ylab="Energy sub metering", xlab="")
  lines(Sub_metering_2 ~ Date_Time, col = 'Red')
  lines(Sub_metering_3 ~ Date_Time, col = 'Blue')
})

legend("topright", col=c("black", "red", "blue"), lty = 1, lwd=2, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex=0.64)

## Exporting line graph to png file and closing png device
dev.copy(png, "plot5.png", height=480, width=480)
dev.off()