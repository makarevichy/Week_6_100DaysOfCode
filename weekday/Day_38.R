# https://www.r-exercises.com/2018/06/06/intro-to-time-series-analysis-part-1/
library(forecast)
# exercise 1

autoplot(gold)
# exercise 2

which.max(gold)
# exercise 3

ggseasonplot(gas)
# exercise 4

ggseasonplot(window(gas,start=1990))
# exercise 5

ggsubseriesplot(gas)
# exrcise 6

findfrequency(gas)

# https://www.r-bloggers.com/intro-to-time-series-analysis-part-2-exercises/
# exercise 1

class(AirPassengers)
start(AirPassengers)
end(AirPassengers)
# exercise 2

cycle(AirPassengers)
# exercise 3

gglagplot(AirPassengers)
# exercise 4

ggAcf(AirPassengers)
# exercise 5

gghistogram(AirPassengers)
# exercise 6

tsdisplay(AirPassengers)
# exercise 7

tsoutliers(AirPassengers)