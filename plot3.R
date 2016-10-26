df <-read_data()

png("plot3.png", width = 480, height = 480)
time <- strptime(paste(df$Date, df$Time, sep=' '), "%d/%m/%Y %H:%M:%S")

df$Sub_metering_1 <- as.numeric(df$Sub_metering_1)
df$Sub_metering_2 <- as.numeric(df$Sub_metering_2)
df$Sub_metering_3 <- as.numeric(df$Sub_metering_3)

plot(time, df$Sub_metering_1, type= 'l',xlab='',ylab='Energy sub metering')
lines(time, df$Sub_metering_2, col="Red")
lines(time, df$Sub_metering_3, col="Blue")
  
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       col=c('Black','Red','Blue'), lty=c(1,1))
       


dev.off()