#Load Required libraries
library(plyr)
library(ggplot2)
library(data.table)

#Plot Question:Have total emissions from PM2.5 decreased in the
#United States from 1999 to 2008? Using the base plotting system, 
#make a plot showing the total PM2.5 emission from all sources for
#each of the years 1999, 2002, 2005, and 2008.

# Load data

source(paste(getwd(),"/ExData2/scripts/course_project2_data_load.R",sep=""))
#Load the two RDS files into NEI & SCC

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# Convert into data.table
NEI.DT = data.table(NEI)
SCC.DT = data.table(SCC)

#Aggreate emission per year
aggregate.data <- with(NEI, aggregate(Emissions, by = list(year), sum))

# Open device

png(filename= paste(getwd(),"/ExData2/outputs/plot1.png",sep=""),width = 480, height = 480, units = "px")
#Plot emissions per year using basic package
#Total emissions from PM2.5 decreased in the United States from 1999 to 2008

plot(aggregate.data, type = "o", ylab = expression("Total Emissions, PM"[2.5]), 
     xlab = "Year", main = "Total Emissions in the United States")
polygon(aggregate.data, col = "green", border = "blue")

# Close the PNG device
dev.off()