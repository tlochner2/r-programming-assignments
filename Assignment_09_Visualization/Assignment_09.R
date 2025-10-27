# Base Graphs
plot(mtcars$mpg, mtcars$wt,
     main = "Mpg vs Weight of Cars",
     xlab = "Mpg",
     ylab = "Weight")

hist(mtcars$cyl,
     main = "Distribution of Car Cylinders",
     xlab = "Number of Cylinders")

# Lattice Graphs
library(lattice)
xyplot(wt ~ mpg | factor(cyl),
       data = mtcars,
       main = "Lattice Graph: Weight vs. MPG by Cylinders")

bwplot(mpg ~ factor(cyl),
       data = mtcars, 
       main = "Lattice: MPG by Cylinder")

# ggplot2
library(ggplot2)
ggplot(mtcars, aes(x = mpg, y = wt, color = factor(cyl))) +
  geom_point() + geom_smooth(method = "lm") + labs(title = "MPG vs. Weight by Cylinder")

ggplot(mtcars, aes(mpg)) + geom_histogram(binwidth = 1) + facet_wrap(~ cyl) + labs(title = "ggplot2: Cylinder Distribution by Mpg")

  