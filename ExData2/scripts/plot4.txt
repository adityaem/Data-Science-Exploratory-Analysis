#Load Required libraries
library(lattice)
library(ggplot2)
library(plyr)


#Plot Question:Across the United States, how have emissions from coal combustion-related sources changed from 1999-2008?

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


#Obtain SCC codes for coal combustion related surces using SCC.Level.Three variable

coal.scc = SCC.DT[grep("Coal", SCC.Level.Three), SCC]

#Aggregate Emissions for the above SCC by year
coal.emissions = NEI.DT[SCC %in% coal.scc, sum(Emissions), by = "year"]
colnames(coal.emissions) <- c("year", "Emissions")

# plot4.png prepare to plot to png

png(filename= paste(getwd(),"/ExData2/outputs/plot4.png",sep=""),width = 480, height = 480, units = "px")

g = ggplot(coal.emissions, aes(year, Emissions))
g + geom_point(color = "red") + geom_line(color = "green") + labs(x = "Year") + 
  labs(y = expression("Total Emissions, PM"[2.5])) + labs(title = "Emissions from Coal Combustion for the US")

dev.off()

