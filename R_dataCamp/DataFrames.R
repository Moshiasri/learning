# To Print out a built in dataFrame
mtcars

# the function head() enables you to show the first observations
# of a data frame. Similarly, the function tail() prints out the
# last observations in your data set.
# 
# Both head() and tail() print a top line called the 'header',
# which contains the names of the different variables in your data set.

# Call head() on mtcars
head(mtcars)

# The function str() shows us the structure of our data set.
# For a data frame it tells us:
#   
#   The total number of observations (e.g. 32 car types)
#   The total number of variables (e.g. 11 car features)
#   A full list of the variables names (e.g. mpg, cyl ... )
#   The data type of each variable (e.g. num)
#   The first observations
# 
# Applying the str() function will often be the first thing that
# We do when receiving a new data set or data frame. It is a great
# way to get more insight in our data set before diving into the real analysis.

# Investigate the structure of mtcars dataframe
str(mtcars)

# We construct a data frame with the data.frame() function.
# As arguments, we pass the vectors from before: they will 
# become the different columns of our data frame. Because 
# every column has the same length, the vectors we pass should
# also have the same length. But don't forget that it is possible
# (and likely) that they contain different types of data.

# Definition of vectors
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <- data.frame(name, type, diameter, rotation, rings)