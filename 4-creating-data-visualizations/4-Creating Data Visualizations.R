setwd("4-creating-data-visualizations")

cars <- read.csv("Cars.csv")

# Install gglpot2
install.packages("ggplot2")

# Load the ggplot2 library
library(ggplot2)

# Create a frequency bar chart
ggplot(
  data = cars,
  aes(x = Transmission)) +
  geom_bar() + 
  ggtitle("Count of cars by transmission type") + 
  xlab("Transmission Type") + 
  ylab("Count of cars")

# Create a histogram
ggplot(
  data = cars,
  aes(x = Fuel.Economy)) + 
  geom_histogram(
    bins = 10) +
  ggtitle("Distribution of fuel economy") + 
  xlab("Fuel economy (mpg") + 
  ylab("Count of cars")

# Create a density plot
ggplot(
  data = cars,
  aes(x = Fuel.Economy)) + 
  geom_density() +
  ggtitle("Distribution of fuel economy") + 
  xlab("Fuel economy (mpg") + 
  ylab("Count of cars")

# Create a scatterplot
ggplot(
  data = cars,
  aes(
    x = Cylinders,
    y = Fuel.Economy)) +
  geom_point() + 
  ggtitle("Fuel economy by cylinders") + 
  xlab("Number of cylinders") + 
  ylab("Fuel economy (mpg)")
