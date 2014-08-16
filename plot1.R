electricity <- read.table("household_power_consumption.txt",sep=";",header=TRUE,na.strings="?")
head(electricity$Date,10)
electricity_2 <- electricity[which(electricity$Date=="1/2/2007" | electricity$Date=="2/2/2007"), ]
electricity_2$Date <- as.Date(electricity_2$Date, format="%d/%m/%y")

png("plot1.png")
hist(electricity_2$Global_active_power, col="red", xlab="Global Active Power(kilowatts)",main="Global Active Power")
dev.off()
