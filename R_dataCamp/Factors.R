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

# When we first get a data set, we will often notice that 
# it contains factors with specific factor levels. However,
# sometimes we want to change the names of these levels
# for clarity or other reasons. R allows us to do this with
# 
# the function levels():
#   
#   levels(factor_vector) <- c("name1", "name2",...)

# Code to build factor_survey_vector
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)

# Specify the levels of factor_survey_vector
levels(factor_survey_vector) <- c("Female", "Male")

factor_survey_vector 

# This will give you a quick overview of the contents of a variable:
#   
#   summary(my_var)

# Build factor_survey_vector with clean levels
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
levels(factor_survey_vector) <- c("Female", "Male")
factor_survey_vector

# Generate summary for survey_vector
summary(survey_vector)

# Generate summary for factor_survey_vector
summary(factor_survey_vector)

# speed_vector should be converted to an ordinal factor 
# since its categories have a natural ordering. By default,
# the function factor() transforms speed_vector into an unordered factor.
# To create an ordered factor, we have to add
# two additional arguments: ordered and levels.
# 
# factor(some_vector,
#        ordered = TRUE,
#        levels = c("lev1", "lev2" ...))
# 
# By setting the argument ordered to TRUE in the function factor(),
# we indicate that the factor is ordered. With the argument levels
# we give the values of the factor in the correct order.

# Create speed_vector
speed_vector <- c("fast", "slow", "slow", "fast", "insane")

# Convert speed_vector to ordered factor vector
factor_speed_vector <- c(speed_vector, ordered = TRUE, levels = c("slow","fast","insane"))

# Print factor_speed_vector
factor_speed_vector
summary(factor_speed_vector)

