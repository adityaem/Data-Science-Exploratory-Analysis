library(lubridate)
# Load data

# Make sure you download and save the data  in your working directory
# Dataset can be downloaded from :https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
if (!file.exists(paste(getwd(),"/Source_Classification_Code.rds",sep=""))) 
{
dlurl <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip'  
download.file(dlurl,destfile='exdata-data-NEI_data.zip',mode='wb')  
unzip('exdata-data-NEI_data.zip')

}

