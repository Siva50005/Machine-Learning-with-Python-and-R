# Packages

# Method1 -> go to Tools tab -> Select Install Packages to install the desired ones..

# Method2 -> Installing using Script file

# Installing LiblineaR - a package used for Linear Regression
install.packages("LiblineaR") 


# To show the list of all the packages stored
library()

# To show the list of currently loaded packages
search()

# Loading a package
require("LiblineaR")

search()

# To Unload a package
detach("package:LiblineaR", unload = TRUE)

search()

# To remove the package from library
remove.packages("LiblineaR")

# To know more about a package 
? ggplot2










