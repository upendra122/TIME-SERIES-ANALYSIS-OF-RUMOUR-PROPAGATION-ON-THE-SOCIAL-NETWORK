require(xts)
require(forecast)
data <- scan("frequency.dat")
time_index <- seq(from = as.POSIXct("2016-11-11 07:00"), 
                  to = as.POSIXct("2016-11-14 00:00"), by = "2 hour")

set.seed(1)
rumourdata <- xts(data, order.by = time_index)
plot(rumourdata)