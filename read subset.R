## Getting full dataset
data_full <- read.csv("household_power_consumption.txt", header = T, sep = ';', 
                      na.strings = "?", nrows = 2075259, check.names = F, 
                      stringsAsFactors = F, comment.char = "", quote = '\"')
data_full$Date <- as.Date(data_full$Date, format = "%d/%m/%Y")

## Subsetting the data
subdata <- subset(data_full, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
