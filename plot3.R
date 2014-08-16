electricity <- read.table("household_power_consumption.txt",sep=";",header=TRUE,na.strings="?")
head(electricity_2$Date,10)
electricity_2 <- electricity[which(electricity$Date=="1/2/2007" | electricity$Date=="2/2/2007"), ]
electricity_2$time <- as.POSIXct(paste(electricity_2$Date, electricity_2$Time),format="%d/%m/%Y %H:%M:%S")

png("plot3.png")
plot(electricity_2$time, electricity_2$Sub_metering_1, type="n", xlab="", ylab="Energey sub metering")
lines(electricity_2$time, electricity_2$Sub_metering_1,col="black")
lines(electricity_2$time, electricity_2$Sub_metering_2,col="red")
lines(electricity_2$time, electricity_2$Sub_metering_3,col="blue")
legend("topright", lty=1, col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
