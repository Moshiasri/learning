# The term factor refers to a statistical data type used to store
# categorical variables. The difference between a categorical variable
# and a continuous variable is that a categorical variable can belong to
# a limited number of categories. A continuous variable, on the other hand,
# can correspond to an infinite number of values.
# 
# It is important that R knows whether it is dealing with a continuous or a
# categorical variable, as the statistical models you will develop in the
# future treat both types differently. 

# Assign to variable theory the value "factors for categorical variables".

# Assign to the variable theory what this chapter is about!
theory = "factors for categorical variables"

# To create factors in R, you make use of the function factor().
# First thing that you have to do is create a vector that contains
# all the observations that belong to a limited number of categories.

# Gender vector
gender_vector <- c("Male", "Female", "Female", "Male", "Male")

# Convert gender_vector to a factor
factor_gender_vector <- factor(gender_vector)

# Print out factor_gender_vector
factor_gender_vector
