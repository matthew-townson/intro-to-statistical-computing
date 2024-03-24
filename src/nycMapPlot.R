# This file takes elements from https://github.com/matthew-townson/104-group-project
# Creates a scatterplot of where pickups happened which shows geography of NYC

# Install required packages
install.packages('ggplot2')

# Load packages
library(ggplot2)

# Import data !! important !! make sure that working directory is the ROOT of this repository, not the src folder
nydata <- read.csv("./data/nyc\ uber\ 2014/merged.csv")
nyc <- subset(nydata, (-74.2>=nydata$Lon & nydata$Lon<=-73.5) | (41>=nydata$Lat & nydata$Lat>=40.5) )

# View data
View(nydata)
View(nyc)

# Plot ALL data
ggplot(nydata, aes(x=Lon, y=Lat) ) +
    geom_bin2d(bins=10000) +
    scale_fill_continuous(type = "viridis") +
    theme_bw()
ggsave("./exported/nyuber/fullscatter.png", width = 16, height = 9, device="png", dpi=1600)
