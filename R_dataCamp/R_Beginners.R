# Addition is being performed in the given operation after the example has
# been presented
# Calculate 3 + 4
3 + 4

# Calculate 6 + 12

# An addition
5 + 5 

# A subtraction
5 - 5 

# A multiplication
3 * 5

# A division
(5 + 5) / 2 

# Exponentiation
2 ^ 5

# Modulo
28 %% 6

# A basic concept in (statistical) programming is called a variable.
# 
# A variable allows you to store a value (e.g. 4) or an object (e.g.
# a function description) in R. You can then later use this variable's
# name to easily access the value or the object that is stored within 
# this variable.

# Assign the value 42 to x
x <- 42

# Print out the value of the variable x
x

# Assign the value 5 to the variable my_apples
my_apples <- 5

# Print out the value of the variable my_apples
my_apples

# Assingment of two variables and assingment of values to them
# Perfroming an arithematic operation on the previously assinged 
# Variables and them forwarding the result into a third variable
# Assign a value to the variables my_apples and my_oranges
my_apples <- 5
my_oranges <- 6

# Add these two variables together
my_apples + my_oranges

# Create the variable my_fruit
my_fruit = my_apples + my_oranges

 
# R works with numerous data types. Some of the most basic types to get 
# started are:  
#   Decimals values like 4.5 are called numerics.
#   Natural numbers like 4 are called integers. Integers are also numerics.
#   Boolean values (TRUE or FALSE) are called logical.
#   Text (or string) values are called characters.

# Changed my_numeric to be 42
my_numeric <- 42

# Changed my_character to be "universe"
my_character <- "universe"

# Changed my_logical to be FALSE
my_logical <- FALSE

# We got an error due to a mismatch in data types? 
# We can avoid such embarrassing situations by checking
# the data type of a variable beforehand. We can do this
# with the class() function, as the code on the right shows.

# Declare variables of different types
my_numeric <- 42
my_character <- "universe"
my_logical <- FALSE 

# Check class of my_numeric
class(my_numeric)

# Check class of my_character
class(my_character)

# Check class of my_logical
class(my_logical)
