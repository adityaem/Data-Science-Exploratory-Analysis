# Exploratory Data Analysis - Course Project 2
<B>All Plot outputs can be found under ExData\Outputs(https://github.com/adityaem/Data-Science-Exploratory-Analysis/tree/master/ExData/outputs) </B>

Dataset can be downloaded from: # Dataset can be downloaded from :https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

Assignment

The overall goal of this assignment is to explore the National Emissions Inventory database and see what it say about fine particulate matter pollution in the United states over the 10-year period 1999–2008. You may use any R package you want to support your analysis.

Questions

You must address the following questions and tasks in your exploratory analysis. For each question/task you will need to make a single plot. Unless specified, you can use any plotting system in R to make your plot.

Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.

Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008? Use the base plotting system to make a plot answering this question.

Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question.

Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?

How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?

Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (fips == "06037"). Which city has seen greater changes over time in motor vehicle emissions?

The Process is broken down into 5 key R Scripts
<ol>
<li>Script 1: Load Data Script (power_data_load.R) - subsets the data to the time period specified. (Future: Date Parameters as Inputs) </li>
<li>Script 2: plot1.R - Creates a histogram graph for Global Active Power against frequency </li>
<li>Script 3: plot2.R - Global Active Power Distribution by day for the selected time period </li>
<li>Script 4: plot3.R - Displays Energy Submetering by Day by different submetering categories </li>
<li>Script 5: plot4.R - Combines plots 2 & 3 and further breaks down the Voltage Levels for the same days as a possible correlation to #2 and the lower right quadrant displays the Global Reactive Power by day as a possible correlation to the Metering Activity in the same time frame. </li>
</ol>

To Execute these scripts

Create a Folder(s) in you working directory labelled as follows
<br>/ExData 
<br>/ExData/scripts
<br>/ExData/outputs
 
 Download the compressed zip file and extract it to the /ExData/data folder
 Copy/download the .R scripts from :https://github.com/adityaem/Data-Science-Exploratory-Analysis/tree/master/ExData/scripts
 

 
