# 1.Barplots

Customer <- read.csv("C:/Users/Shiva/Documents/ML using Python and R/Mine/R/Datasets/Customer.csv", header = TRUE)

str(Customer)

View(Customer)


# To calculate the frequency distribution of a particular column

y <- table(Customer$Region)

y

View(y)

# Barplot(for categorical data)
barplot(y)

## Ordering the barplot
barplot(y[order(y)]) # For ascending order
barplot(y[order(-y)]) # For descending order

## Changing the orientation
barplot(y[order(y)], horiz = TRUE) # For ascending order

## Changing the color of the bars
barplot(y[order(y)], horiz = TRUE, col = "red")
barplot(y[order(y)], horiz = TRUE, col = c("red", "blue", "yellow", "beige"))

## To see the list of colors available
colors()

## Removing the border
barplot(y[order(y)], horiz = TRUE, col = c("red", "blue", "yellow", "beige"), border = NA)

## Adding the title and labelling
barplot(y[order(y)], horiz = TRUE, col = c("red", "blue", "yellow", "beige"), main = "Frequency of Regions")

barplot(y[order(y)], horiz = TRUE, col = c("red", "blue", "yellow", "beige"), main = "Frequency of Regions", xlab = "Number of Customers", ylab = "Directions")


# 2.Histograms

# Creating a age category
hist(Customer$Age)

# Changing the bucket size and bin size
hist(Customer$Age, breaks = 5)

hist(Customer$Age, breaks = c(0, 40, 60, 100))

hist(Customer$Age, breaks = c(0, 40, 60, 100), freq = TRUE)

# Tweaking
hist(Customer$Age, breaks = c(0, 40, 60, 100), freq = TRUE, col = "blue", main = "Histogram of Age", xlab = "Customers age")

