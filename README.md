# Exploratory Data Analysis - Course Project 1
The Objective of this course assignment can be found at: https://github.com/adityaem/ExData_Plotting1
Dataset can be downloaded from: # Dataset can be downloaded from :https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

The project is broken up into two modules 
1. Loading the relevant data required efficiently
2. Plotting the data as required by the project objectives

To support the plots required listed below are some of the key measures used
<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>
The Process is broken down into 5 key R Scripts
<ol>
<li>Script 1: Load Data Script (power_data_load.R) - subsets the data to the time period specified. (Future: Date Parameters as Inputs) </li>
<li>Script 2: plot1.R - Creates a histogram graph for Global Active Power against frequency </li>
<li>Script 3: plot2.R - Global Active Power Distribution by day for the selected time period </li>
<li>Script 4: plot3.R - Displays Energy Submetering by Day by different submetering categories </li>
<li>Script 5: plot4.R - Combines plots 2 & 3 and further breaks down the Voltage Levels for the same days as a possible correlation to #2 and the lower right quadrant displays the Global Reactive Power by day as a possible correlation to the Metering Activity in the same time frame. </li>
</ol>

To Execute these scitpts

Create a Folder(s) in you working directory labelled as follows
<br>/ExData 
<br>/ExData/data 
<br>/ExData/scripts
<br>/ExData/outputs
 
 Download the compressed zip file and extract it to the /ExData/data folder
 Copy/download the .R scripts from :https://github.com/adityaem/Data-Science-Exploratory-Analysis/tree/master/ExData/scripts
 
 Now execute the scripts for the plots you would like to generate. If you would want to change the dates for now you will need to modify Script 1.
 
 
