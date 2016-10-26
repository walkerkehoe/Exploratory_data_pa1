df <-read_data()
png("plot2.png", width = 480, height = 480)
time <- strptime(paste(df$Date, df$Time, sep=' '), "%d/%m/%Y %H:%M:%S")
plot(time,df$Global_active_power, type='l', ylab='Global Active Power (kilowatts)')

dev.off()