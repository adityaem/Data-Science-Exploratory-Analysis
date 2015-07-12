library(lubridate)
# Load data

# Make sure you download and save the data  in your working directory
# Dataset can be downloaded from :https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
if (!file.exists(paste(getwd(),"/outputs/power_data.rds",sep=""))) {
dlurl <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'  
download.file(dlurl,destfile='raw-power-data.zip',mode='wb')  
unzip('raw-power-data.zip')
  # Read data into a table with appropriate columns and data types
  power.df <- read.table('household_power_consumption.txt', header=TRUE,
                         sep=';', na.strings='?',
                         colClasses=c(rep('character', 2), 
                                      rep('numeric', 7)))
  
  # Convert dates and times
  power.df$Date <- dmy(power.df$Date)
  power.df$Time <- hms(power.df$Time)
  
  # Reduce data frame to what we need - subsetting
  start <- ymd('2007-02-01')
  end <- ymd('2007-02-02')
  power.df <- subset(power.df, year(Date) == 2007 & 
                       month(Date) == 2 &
                       (day(Date) == 1 | day(Date) == 2))
  
  # Combine date and time
  power.df$date.time <- power.df$Date + power.df$Time
  
  # Save file

  saveRDS(power.df, file= paste(getwd(),"/ExData/outputs/power_data.rds",sep=""))
  power.df <- readRDS(paste(getwd(),"/ExData/outputs/power_data.rds",sep=""))
}

