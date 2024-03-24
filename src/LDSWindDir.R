# Plot wind directions

# Initialise libraries
source("./src/init.R")
init()

library('ggplot2')

# Load camborne data
camborne1987 <- read.csv("./data/large\ data\ set/1987/camborne.csv")
camborne2015 <- read.csv("./data/large\ data\ set/2015/camborne.csv")

# Convert to frequency table, and appropriate data frame
freqTable87 <- table(camborne1987$Cardinal.Direction)

frequencyDataFrame87 <- as.data.frame(freqTable87)
frequencyDataFrame87$Value <- as.factor(names(freqTable87))

# Plot
ggplot(frequencyDataFrame87, aes(x = Value, y = Freq)) +
  geom_bar(stat = "identity", fill = "skyblue", color = "black") +
  labs(title = "Cardinal Wind Direction Frequency (1987)",
       x = "Direction", y = "Frequency") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
ggsave("./exported/LDS/CardinalWindCamborne/CardinalWindCamborne1987.png", width = 16, height = 9, device="png", dpi=1600)

#Doing same for camborne 2015
freqTable15 <- table(camborne2015$Cardinal.Direction)

frequencyDataFrame15 <- as.data.frame(freqTable15)
frequencyDataFrame15$Value <- as.factor(names(freqTable15))

# Plot
ggplot(frequencyDataFrame15, aes(x = Value, y = Freq)) +
  geom_bar(stat = "identity", fill = "skyblue", color = "black") +
  labs(title = "Cardinal Wind Direction Frequency (2015)",
       x = "Direction", y = "Frequency") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
ggsave("./exported/LDS/CardinalWindCamborne/CardinalWindCamborne2015.png", width = 16, height = 9, device="png", dpi=1600)

# Comparing years - add Dataset attribute and combine
frequencyDataFrame87$DS <- "DS 1987"
frequencyDataFrame15$DS <- "DS 2015"

completeDataset <- rbind(frequencyDataFrame87, frequencyDataFrame15)

# Plot
ggplot(completeDataset, aes(x = Value, y = Freq, fill = DS)) +
  geom_bar(stat = "identity", position = "dodge", color = "black") +
  labs(title = "Cardinal Wind Direction Frequency (1987/2015)",
       x = "Direction", y = "Frequency") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
ggsave("./exported/LDS/CardinalWindCamborne/CardinalWindCamborneCombined.png", width = 16, height = 9, device="png", dpi=1600)
