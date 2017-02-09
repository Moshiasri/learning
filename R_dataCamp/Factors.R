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

# There are two types of categorical variables: 
#   a nominal categorical variable and an ordinal categorical variable.
# 
# A nominal variable is a categorical variable without an implied order.
# This means that it is impossible to say that 'one is worth more than the other'.
# For example, think of the categorical variable animals_vector with the 
# categories "Elephant", "Giraffe", "Donkey" and "Horse". 
# Here, it is impossible to say that one stands above or below the other.
# 
# 
# In contrast, ordinal variables do have a natural ordering. 
# Consider for example the categorical variable temperature_vector with
# the categories: "Low", "Medium" and "High". Here it is obvious that
# "Medium" stands above "Low", and "High" stands above "Medium".

# Animals
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
factor_animals_vector <- factor(animals_vector)
factor_animals_vector

# Temperature
temperature_vector <- c("High", "Low", "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector

