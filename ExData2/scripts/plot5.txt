#Load Required libraries
library(ggplot2)
library(plyr)


#Plot Question:How have emissions from motor vehicle sources changed from 1999-2008 in Baltimore City?


# Load data
if (!file.exists(paste(getwd(),"/Source_Classification_Code.rds",sep=""))) 
{
  dlurl <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip'  
  download.file(dlurl,destfile='exdata-data-NEI_data.zip',mode='wb')  
  unzip('exdata-data-NEI_data.zip')
  
}
#Load the two RDS files into NEI & SCC

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")


#Obtain SCC codes for motor vehicle sources using SCC.EI.Sector variable
motor.vehicle.scc = SCC.DT[grep("[Mm]obile|[Vv]ehicles", EI.Sector), SCC]


#Aggregate Emissions for the above SCC by year and county and filter Baltimore City
motor.vehicle.emissions.baltimore = NEI.DT[SCC %in% motor.vehicle.scc, sum(Emissions), 
    by = c("year", "fips")][fips == "24510"]
colnames(motor.vehicle.emissions.baltimore) <- c("year", "fips", "Emissions")

# plot5.png prepare to plot to png

png(filename= paste(getwd(),"/ExData2/outputs/plot5.png",sep=""),width = 480, height = 480, units = "px")

g = ggplot(motor.vehicle.emissions.baltimore, aes(year, Emissions))
g + geom_point(color = "red") + geom_line(color = "green") + labs(x = "Year") + 
    labs(y = expression("Total Emissions, PM"[2.5])) + labs(title = "Total Emissions from Motor Vehicle Sources in Baltimore City")

dev.off()

