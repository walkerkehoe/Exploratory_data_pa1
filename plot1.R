df <-read_data()
png("plot1.png", width = 480, height = 480)
hist(as.numeric(df$Global_active_power), main="Global Active Power", col="red", 
     xlab = "Global Active Power (kilowatts)")
dev.off()

