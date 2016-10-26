
read_data <- function() {
  df <- read.table('household_power_consumption.txt', sep = ';', header = TRUE, 
                   stringsAsFactors = FALSE, dec = '.')
  df <- df[df$Date %in% c('1/2/2007','2/2/2007'), ]
}

