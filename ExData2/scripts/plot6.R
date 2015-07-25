#Load Required libraries
library(ggplot2)
library(plyr)


#Plot Question:Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (fips == 06037). 
#Which city has seen greater changes over time in motor vehicle emissions?


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

motor.vehicle.scc = SCC.DT[grep("[Mm]obile|[Vv]ehicles", EI.Sector), SCC]

#Aggregate Emissions for the above SCC by year and county

motor.vehicle.emissions = NEI.DT[SCC %in% motor.vehicle.scc, sum(Emissions), 
    by = c("year", "fips")]
colnames(motor.vehicle.emissions) <- c("year", "fips", "Emissions")

# plot6.png prepare to plot to png

png(filename= paste(getwd(),"/ExData2/outputs/plot6.png",sep=""),width = 480, height = 480, units = "px")

g = ggplot(motor.vehicle.emissions[fips == "24510" | fips == "06037"], aes(year,log(Emissions)))
g + geom_point() + geom_line(aes(color = fips)) + scale_color_discrete(name = "County", 
    breaks = c("06037", "24510"), labels = c("Los Angeles", "Baltimore")) + 
    labs(x = "Year") + labs(y = expression("Total Emissions, PM"[2.5])) + labs(title = "Annual Motor Vehicle Emissions")

dev.off()

