# Method1 -> Using built-in datasets (Using datasets library)

# To see the list of datasets
data()
library(help = "datasets")

# About iris dataset
? iris

# To look at the structure of the dataset
str(iris)

# To look at the actual data
iris

# To load the dataset into the workspace
data("iris")


# Method2 -> Manual data entry

x1 <- 1:7
x2 <- c(2, 3, 4, 5)

# For sequence of numbers (example: multiples of 5)
x3 <- seq(5, 50, by = 5)

# Manually entering values one by one (Double enter to stop)
x4 <- scan() 


# Method3 -> Importing data from files(csv, txt,...)

Product <- read.table("C:/Users/Shiva/Documents/ML using Python and R/Mine/R/Datasets/Product.txt", header = TRUE, sep = "\t")

str(Product)

Customer <- read.csv("C:/Users/Shiva/Documents/ML using Python and R/Mine/R/Datasets/Customer.csv", header = TRUE)

str(Customer)

# To view the whole dataframe
View(Customer)
