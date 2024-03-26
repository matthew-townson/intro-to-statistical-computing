# quadratic
fx <- function(x) {
  return(x^2 + 2 * x + 4)
}

# set x bound
x <- seq(-10, 10, length.out = 100)

# plot
plot(x, fx(x))

# niceplot
png("./exported/distribution/quadratic.png")
plot(x, fx(x), type = "l")
dev.off()
