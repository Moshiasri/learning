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

# Check the structure of planets_df
str(planets_df)

# Selection of data frame elements 
# The planets_df data frame from the previous exercise is pre-loaded
mercury  <- planets_df[1,3]
# Print out diameter of Mercury (row 1, column 3)
mercury

# Print out data for Mars (entire fourth row)
mars <- planets_df[4,]
mars

# Instead of using numerics to select elements of a data frame,
# we can also use the variable names to select columns of a data frame.

#   For Example: 
#               planets_df[1:3,"type"]

# The planets_df data frame from the previous exercise is pre-loaded

# Select first 5 values of diameter column
planets_df[1:5,"diameter"]

# You will often want to select an entire column,
# namely one specific variable from a data frame. 
# If you want to select all elements of the variable diameter,
# for example, both of these will do the trick:
#   
#   planets_df[,3]
#   planets_df[,"diameter"]
# 
# However, there is a short-cut. If your columns have names,
# you can use the $ sign:
#   
#   planets_df$diameter

# planets_df is pre-loaded in your workspace

# Select the rings variable from planets_df
rings_vector <- planets_df$rings

# Print out rings_vector
rings_vector

# The code below selects the name column of all planets that have rings.
# Adapt the code so that instead of only the name column,
# all columns for planets that have rings are selected.

# planets_df and rings_vector are pre-loaded in your workspace

# Adapted the code to select all columns for planets with rings
planets_df[rings_vector, ]

# The first argument of subset() specifies the data set for which
# you want a subset. By adding the second argument, you give R the
# necessary information and conditions to select the correct subset.

#   Syntax:  subset(my_df, subset = some_condition)

# planets_df is pre-loaded in your workspace

# Select planets with diameter < 1
subset(planets_df, subset = diameter < 1)

# In data analysis we can sort your data according to a 
# certain variable in the data set. In R, this is done with
# the help of the function order().
# 
# order() is a function that gives us the ranked position of
# each element when it is applied on a variable, such as a vector for example:
#   
#   > a <- c(100, 10, 1000)
#   > order(a)
#   [1] 2 1 3
# 
# 10, which is the second element in a, is the smallest element, so 2 comes
# first in the output of order(a). 100, which is the first element in a is
# the second smallest element, so 1 comes second in the output of order(a).
# 
# This means we can use the output of order(a) to reshuffle a:
#   
#   > a[order(a)]
#     [1]   10  100 1000

# Play around with the order function in the console
order()

# planets_df is pre-loaded in your workspace

# Use order() to create positions
positions <- order(planets_df$diameter)

# Use positions to sort planets_df
planets_df[positions, ]