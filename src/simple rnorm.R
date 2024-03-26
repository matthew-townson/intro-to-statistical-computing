# Plots a normal distribution

# set x bound sequence of values
x <- seq(-5, 5, length.out = 1000)

# generate pdf
pdf <- dnorm(x, mean = 0, sd = 1)

# plot
plot(x, pdf, type = "l", col = "blue", main = "Standard Normal",
     xlab = "x", ylab = "p")
