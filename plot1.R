#Reference the data loading script to ensure the data is available to plot
source("dataLoad.R")

#Plot 1 - Open png graphic device and set size
png(file="plot1.png", width = 480, height = 480, units = "px")

#Create initial plot of energy sub metering over time as line graph
hist(powerSub$Global_active_power, col = "red", main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)", ylab = "Frequency",  
     ylim=c(0,1200))

#Turn off the png graphics device
dev.off()
