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
