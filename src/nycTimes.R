# Selectively plotting bar charts based on how many pickups happened in a given time

# Install libraries
source("./src/init.R")
init()

# Load packages
library(lubridate)

# Import data !! important !! make sure that working directory is the ROOT of this repository, not the src folder
nydata <- read.csv("./data/nyc\ uber\ 2014/merged.csv")

# Convert Date/Time to POSIXct time
nydata$Date.Time <- mdy_hms(nydata$Date.Time)

# * Crunch into hours
nydata$Hour <- format(nydata$Date.Time, "%H")
hourHits <- table(nydata$Hour)

# Plot what times are common
png("./exported/nyuber/timeplot.png", width = 1920, height = 1080)
barplot(hourHits, main = "Uber Pickup Times", xlab = "Time (Hour)", ylab = "Frequency", col = "green", border = "black")
dev.off()
