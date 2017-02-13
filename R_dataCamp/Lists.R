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


# The variables mov, act and rev are available
# Second way to create the named list
# Finish the code to build shining_list
shining_list <- list(moviename = mov, actors = act, reviews = rev)

# Our list will often be built out of numerous elements and components. Therefore, getting a single element,
# multiple elements, or a component out of it is not always straightforward.
# 
# One way to select a component is using the numbered position of that component. For example, to "grab" the
# first component of shining_list you type
# 
#   shining_list[[1]]
# A quick way to check this out is typing it in the console. Important to remember: to select elements from
# vectors, We use single square brackets: [ ]. Don't mix them up!
# 
# We can also refer to the names of the components, with [[ ]] or with the $ sign. Both will select the data
# frame representing the reviews:
# 
#   shining_list[["reviews"]]
#   shining_list$reviews
# Besides selecting components, you often need to select specific elements out of these components.

# shining_list is already pre-loaded in the workspace

# Print out the vector representing the actors
shining_list[[2]]

# Print the second element of the vector representing the actors
shining_list[[2]][2]

# To conveniently add elements to lists you can use the c() function,
# that you also used to build vectors:
#   
#   ext_list <- c(my_list , my_val)
# This will simply extend the original list, my_list, with the component my_val.
# This component gets appended to the end of the list. If you want to give the new list item a name,
# you just add the name as you did before:
#   
#   ext_list <- c(my_list, my_name = my_val)

# shining_list, the list containing movie name, actors and reviews, is pre-loaded in the workspace

# We forgot something; add the year to shining_list
shining_list_full <- c(shining_list, year = 1980)

# Have a look at shining_list_full
str(shining_list_full)