#Reference the data loading script to ensure the data is available to plot
source("dataLoad.R")

#Plot 3 - Open png graphic device and set size
png(file="plot3.png", width = 480, height = 480, units = "px")

#Create initial plot of energy sub metering over time as line graph
with(powerSub, plot(Time, Sub_metering_1, type = "l", xlab = "", 
                    ylab = "Energy sub metering"))

#add the line for sub metering _2
lines(powerSub$Time, powerSub$Sub_metering_2, col = "red")

#add the line for sub metering _3
lines(powerSub$Time, powerSub$Sub_metering_3, col = "blue")

#add the legend
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", 
                              "Sub_metering_3"), lty = 1, 
                                col = c("black", "red", "blue"))

#Turn off the png graphics device
dev.off()

