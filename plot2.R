electricity <- read.table("household_power_consumption.txt",sep=";",header=TRUE,na.strings="?")
head(electricity_2$Date,10)
electricity_2 <- electricity[which(electricity$Date=="1/2/2007" | electricity$Date=="2/2/2007"), ]
electricity_2$time <- as.POSIXct(paste(electricity_2$Date, electricity_2$Time),format="%d/%m/%Y %H:%M:%S")

png("plot2.png")
plot(electricity_2$time,electricity_2$Global_active_power, type = "l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()
