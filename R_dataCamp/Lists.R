# A list in R is similar to your to-do list at work or school: 
#   the different items on that list most likely differ in length,
#   characteristic, type of activity that has to do be done, ...
# 
# A list in R allows you to gather a variety of objects under one name
# (that is, the name of the list) in an ordered way. These objects can be
# matrices, vectors, data frames, even other lists, etc. It is not even required
# that these objects are related to each other in any way.
# 
# You could say that a list is some kind super data type: you can store practically
# any piece of information in it!

# To construct a list you use the function list():
#   
#   my_list <- list(comp1, comp2 ...)
#   The arguments to the list function are the list components.
#   Remember, these components can be matrices, vectors, other lists, ...

# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]

# Construct list with these different elements:
my_list <- list(my_vector, my_matrix, my_df)

# my_list <- list(name1 = your_comp1, 
#                 name2 = your_comp2)
# This creates a list with components that are named name1, name2, and so on. If you want to name your lists
# after you've created them, you can use the names() function as you did with vectors. The following commands
# are fully equivalent to the assignment above:
# 
# my_list <- list(your_comp1, your_comp2)
# names(my_list) <- c("name1", "name2")

# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]

# Adapt list() call to give the components names
my_list <- list(my_vector, my_matrix, my_df)
names(my_list) <- c("vec","mat","df")

# Print out my_list
my_list
