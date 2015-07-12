# Load data
source(paste(getwd(),"/ExData/scripts/power_data_load.R",sep=""))
# Open device
png(filename= paste(getwd(),"/ExData/outputs/plot2.png",sep=""))

# Make plot
plot(power.df$date.time, power.df$Global_active_power,
     ylab='Global Active Power (kilowatts)', xlab='', type='l')

# Turn off device
dev.off()