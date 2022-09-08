download.file(url = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile = "household_power_consumption.zip")
unzip("household_power_consumption.zip")
raw_data<-read.csv("household_power_consumption.txt", sep=";", header = TRUE)
data_to_plot <-raw_data[raw_data$Date %in% c("1/2/2007","2/2/2007") ,]
times <- strptime(paste(data_to_plot$Date, data_to_plot$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(times,as.numeric(data_to_plot$Global_active_power) , type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
