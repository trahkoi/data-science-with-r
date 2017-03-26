# Set the working directory
setwd("./")

# Read a tab-limited data file
cars <- read.table(
  file = "Cars.txt",
  header = TRUE,
  sep = "\t",
  quote = "\""
)
head(cars)

# Load the dplyr lib
library(dplyr)

# Select a subset of columns
temp <- select(
  .data = cars,
  Transmission,
  Cylinders,
  Fuel.Economy
)
head(temp)

# Filter a subset of rows
temp <- filter(
  .data = temp,
  Transmission == "Automatic"
)
head(temp)

# Compute a new column
temp <- mutate(
  .data = temp,
  Consumption = Fuel.Economy * 0.425
)
head(temp)

# Group by a column
temp <- group_by(
  .data = temp,
  Cylinders
)
head(temp)

# Aggregate based on groups
temp <- summarise(
  .data = temp,
  Avg.Consumption = mean(Consumption)
)
head(temp)

# Arrange the rows in descending order
temp <- arrange(
  .data = temp,
  desc(Avg.Consumption)
)
head(temp)

# Convert to a data frame
efficiency = as.data.frame(temp)
print(efficiency)

# Chain methods together
efficiency <- cars %>%
  select(Fuel.Economy, Cylinders, Transmission) %>%
  filter(Transmission == "Automatic") %>%
  mutate(Consumption = Fuel.Economy * 0.425) %>%
  group_by(Cylinders) %>%
  summarise(Avg.Consumption = mean(Consumption)) %>%
  arrange(desc(Avg.Consumption)) %>%
  as.data.frame()
print(efficiency)

# Save the results to a CSV file
write.csv(
  x = efficiency,
  file = "Fuel Efficiency.csv",
  row.names = FALSE
)
