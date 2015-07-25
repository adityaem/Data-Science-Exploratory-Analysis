#Load Required libraries
library(plyr)
library(ggplot2)


#Plot Question:Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008? 
#Use the base plotting system to make a plot answering this question.

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


NEI.24510 <- NEI[which(NEI$fips == "24510"), ]
aggregate.24510 <- with(NEI.24510, aggregate(Emissions, by = list(year), sum))
colnames(aggregate.24510) <- c("year", "Emissions")




# Open device

png(filename= paste(getwd(),"/ExData2/outputs/plot2.png",sep=""),width = 480, height = 480, units = "px")
#Plot emissions per year using basic package
#Total emissions from PM2.5 have decreased in the Baltimore City, Maryland from 1999 to 2008 however there was an increase of PM2.5 between the year 2002 and 2006.

plot(aggregate.24510, type = "o", ylab = expression("Total Emissions, PM"[2.5]), 
    xlab = "Year", main = "Total Emissions for Baltimore County", xlim = c(1999, 
        2008))

# Close the PNG device
dev.off()