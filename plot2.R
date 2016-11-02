#Reference the data loading script to ensure the data is available to plot
source("dataLoad.R")

#Plot 2 - Open png graphic device and set size
png(file="plot2.png", width = 480, height = 480, units = "px")

#Create initial plot of Global_active_power over time as line graph
with(powerSub, plot(Time, Global_active_power, type = "l", xlab = "", 
                    ylab = "Global Active Power (kilowatts)"))

#Turn off the png graphics device
dev.off()
