## Read dataset file 
fulldataset <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

## Read Date column of the dataset into Date format
fulldataset$Date <- as.Date(fulldataset$Date, format= "%d/%m/%Y")

## Subsetting the dataset for specific dates
final_data<- subset(fulldataset, Date == "2007-02-01" | Date == "2007-02-02" )

## Merge Date and Time columns into a third column named "Date_Time"
final_data$Date_Time <- paste(final_data[,1], final_data[,2],sep=" ")

## Convert newly created Date_Time column to POSIXct format
final_data$Date_Time <- as.POSIXct(Date_Time)

## Plotting a line graph
plot(final_data$Global_active_power ~ final_data$Date_Time, type="l", ylab="Global Active Power (kilowatts)", xlab="")

## Exporting line graph to png file and closing png device
dev.copy(png, "plot2.png", height=480, width=480)
dev.off()