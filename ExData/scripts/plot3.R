# Load data
source(paste(getwd(),"/ExData/scripts/power_data_load.R",sep=""))
# Open device
png(filename= paste(getwd(),"/ExData/outputs/plot3.png",sep=""))

# Make plot
plot(power.df$date.time, power.df$Sub_metering_1, type='l',
     xlab='', ylab='Energy sub metering')
lines(power.df$date.time, power.df$Sub_metering_2, col='red')
lines(power.df$date.time, power.df$Sub_metering_3, col='blue')
legend('topright', 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), 
       lty='solid')

# Turn off device
dev.off()