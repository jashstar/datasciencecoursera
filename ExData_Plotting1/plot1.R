## Rough estimate of how much memory the dataset will require in memory before reading into R
memory_required <- (2075259 * 9 * 8)/10^9

## Read dataset file 
fulldataset <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

## Read Date column of the dataset into Date format
fulldataset$Date <- as.Date(fulldataset$Date, format= "%d/%m/%Y")

## Subsetting the dataset for specific dates
final_data<- subset(fulldataset, Date == "2007-02-01" | Date == "2007-02-02" )

## Preparing histogram
hist(final_data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power(kilowatts)", ylab="Frequency")

## Exporting histogram to png file and closing png device
dev.copy(png, "plot1.png", height=480, width=480)
dev.off()

