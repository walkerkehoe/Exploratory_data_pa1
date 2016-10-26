df <-read_data()


time <- strptime(paste(df$Date, df$Time, sep=' '), "%d/%m/%Y %H:%M:%S")

df$Sub_metering_1 <- as.numeric(df$Sub_metering_1)
df$Sub_metering_2 <- as.numeric(df$Sub_metering_2)
df$Sub_metering_3 <- as.numeric(df$Sub_metering_3)
df$Voltage <- as.numeric(df$Voltage)
df$Global_reactive_power <- as.numeric(df$Global_reactive_power)

png("plot4.png", width = 480, height = 480)
par(mfrow=c(2,2),mar=c(4,4,2,1))

with(df, {
  plot(time, df$Global_active_power, 
       type= 'l',
       ylab='Global Active Power',
       xlab='')
  plot(time,df$Voltage, type='l', xlab="datetime", ylab="Voltage")
  plot(time, df$Sub_metering_1, type= 'l',ylab='Energy sub metering')
  lines(time,df$Sub_metering_2, col="Red")
  lines(time,df$Sub_metering_3, col="Blue")
  
  legend("topright", col=c('black','red','blue'), 
         legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1, lwd=2)
  plot(time,df$Global_reactive_power, type="l", xlab='datetime', ylab="Energy sub metering")
})

dev.off()