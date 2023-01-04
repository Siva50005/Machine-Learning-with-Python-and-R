# Importing the data

df <- read.csv("C:/Users/Shiva/Documents/ML using Python and R/Mine/R/Datasets/House_Price.csv", header = TRUE)

View(df)

str(df)

## Running EDD
summary(df)


# Visualizing the data
hist(df$crime_rate)

pairs(~price+crime_rate+n_hot_rooms+rainfall, data = df)

barplot(table(df$airport))

barplot(table(df$waterbody))

barplot(table(df$bus_ter))

# Observations
# 1.n_hot_rooms and rainfall has outliers
# 2.n_hos_beds has missing values
# 3.bus_ter is a useless variable
# 4.crime_rate has some other functional relationship with price


# Outlier Treatment
quantile(df$n_hot_rooms, 0.99)

uv <- 3*quantile(df$n_hot_rooms, 0.99)

df$n_hot_rooms[df$n_hot_rooms > uv] <- uv

summary(df$n_hot_rooms)

quantile(df$rainfall, 0.01)

lv <- 0.3*quantile(df$rainfall, 0.01)

df$rainfall[df$rainfall < lv] <- lv

summary(df$rainfall)

# Missing value Treatment
mean(df$n_hos_beds)

mean(df$n_hos_beds, na.rm = TRUE)

## To get the index of NA values
which(is.na(df$n_hos_beds))

## Replacing with the mean
df$n_hos_beds[is.na(df$n_hos_beds)] <- mean(df$n_hos_beds, na.rm = TRUE)

summary(df$n_hos_beds)

# Variable Tranformation

pairs(~price+crime_rate, data = df)
plot(df$price, df$crime_rate)

df$crime_rate <- log(1 + df$crime_rate)

plot(df$price, df$crime_rate)

df$avg_dist <- (df$dist1 + df$dist2 + df$dist3 + df$dist4) / 4

df2 <- df[, -7:-10]

df <- df2

rm(df2)

df2 <- df[, -14]

df <- df2

rm(df2)


# DUMMY VARIABLE CREATION (ONE HOT ENCODING)
install.packages("dummies")

df2 <- dummy.data.frame(df)

df <- df2

rm(df2)

df <- df[, -9]
df <- df[, -14]

# CORRELATION ANALYSIS
cor(df)

round(cor(df), 2)

df <- df[, -16]

