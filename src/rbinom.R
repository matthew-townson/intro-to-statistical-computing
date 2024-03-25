# Example of a binomial dataset

# Probability mass function with 20 elements, and a probability of success of 0.2,
# show all probabilities for all elements for later plotting
pmf <- dbinom(0:20, size = 20, prob=0.2)

# plot the probabilities
png("./exported/distribution/binomexample.png", width = 1920, height = 1080)
plot(0:20, main = "Binomial distribution", xlab = "Attempt no.", ylab = "P-value", pmf, type = 'h')
dev.off()
