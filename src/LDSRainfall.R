# Plot rainfall amounts

# Initialise libraries
source("./src/init.R")
init()

library('ggplot2')

# Load data
heathrow1987 <- read.csv("./data/large\ data\ set/1987/heathrow.csv")
heathrow2015 <- read.csv("./data/large\ data\ set/2015/heathrow.csv")

# Convert to frequency table, and appropriate data frame
freqTable87 <- table(heathrow1987$Daily.Total.Rainfall..0900.0900...mm.)

frequencyDataFrame87 <- as.data.frame(freqTable87)
frequencyDataFrame87$Value <- as.factor(names(freqTable87))

# Plot
ggplot(frequencyDataFrame87, aes(x = Value, y = Freq)) +
  geom_bar(stat = "identity", fill = "skyblue", color = "black") +
  labs(title = "Heathrow Rainfall (1987)",
       x = "Amount", y = "Frequency") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
ggsave("./exported/LDS/HeathrowRainfall/Rainfall1987.png", width = 16, height = 9, device="png", dpi=1600)

#Doing same for heathrow 2015
freqTable15 <- table(heathrow2015$Daily.Total.Rainfall..0900.0900...mm.)

frequencyDataFrame15 <- as.data.frame(freqTable15)
frequencyDataFrame15$Value <- as.factor(names(freqTable15))

# Plot
ggplot(frequencyDataFrame15, aes(x = Value, y = Freq)) +
  geom_bar(stat = "identity", fill = "skyblue", color = "black") +
  labs(title = "Heathrow Rainfall (2015)",
       x = "Amount", y = "Frequency") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
ggsave("./exported/LDS/HeathrowRainfall/Rainfall2015.png", width = 16, height = 9, device="png", dpi=1600)

# Comparing years - add Dataset attribute and combine
frequencyDataFrame87$DS <- "DS 1987"
frequencyDataFrame15$DS <- "DS 2015"

completeDataset <- rbind(frequencyDataFrame87, frequencyDataFrame15)

# Plot
ggplot(completeDataset, aes(x = Value, y = Freq, fill = DS)) +
  geom_bar(stat = "identity", position = "dodge", color = "black") +
  labs(title = "Heathrow Rainfall (1987/2015)",
       x = "Amount", y = "Frequency") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
ggsave("./exported/LDS/HeathrowRainfall/RainfallCombined.png", width = 16, height = 9, device="png", dpi=1600)
