# Load data

source(paste(getwd(),"/ExData/scripts/power_data_load.R",sep=""))
# Open device
png(filename= paste(getwd(),"/ExData/outputs/plot1.png",sep=""))

# Make plot
hist(power.df$Global_active_power, main='Global Active Power', 
     xlab='Global Active Power (kilowatts)', col='red')

# Turn off device
dev.off()

