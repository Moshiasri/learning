# A matrix is a collection of elements of the same data type (numeric,
# character, or logical) arranged into a fixed number of rows and columns.
# Since you are only working with rows and columns, a matrix is called 
# two-dimensional.

# Construct a matrix with 3 rows that contain the numbers 1 up to 9
matrix(1:9, byrow = TRUE, nrow = 3)

# We'll combine all these figures into a single vector.
# Next, we'll build a matrix from this vector.

# Use c(new_hope, empire_strikes, return_jedi) to combine the three
# vectors into one vector. Call this vector box_office.
# Construct a matrix with 3 rows, where each row represents a movie.
# Use the matrix() function to this. The first argument is the vector
# box_office, containing all box office figures. Next, you'll have to
# specify nrow = 3 and byrow = TRUE. Name the resulting matrix star_wars_matrix.

# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Create box_office
box_office <- c(new_hope, empire_strikes, return_jedi)

# Construct star_wars_matrix
star_wars_matrix <- matrix(box_office,  byrow = TRUE, nrow = 3)

# To help us remember what is stored in star_wars_matrix,
# we would like to add the names of the movies for the rows. 
# Not only does this help us to read the data, but it is also
# useful to select certain elements from the matrix.
# 
# Similar to vectors, we can add names for 
# the rows and the columns of a matrix.

# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Construct matrix
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), nrow = 3, byrow = TRUE)

# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

# Name the columns with region
colnames(star_wars_matrix) <- region

# Name the rows with titles
rownames(star_wars_matrix) <- titles

# Print out star_wars_matrix
star_wars_matrix

# In R, the function rowSums() conveniently
# calculates the totals for each row of a matrix.

# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE,
                           dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"), 
                                           c("US", "non-US")))

# Calculate worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)

# Print out worldwide_vector
worldwide_vector

# We can add a column or multiple columns to a matrix with the cbind()
# function, which merges matrices and/or vectors together by column. 

# For example:
#   
#   big_matrix <- cbind(matrix1, matrix2, vector1 ...)

# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE,
                           dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"), 
                                           c("US", "non-US")))

# The worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)

# Use rbind() to paste together star_wars_matrix 
# and star_wars_matrix2, in this order. Assign the
# resulting matrix to all_wars_matrix.

# star_wars_matrix and star_wars_matrix2 are available in your workspace
star_wars_matrix  
star_wars_matrix2 

# Combine both Star Wars trilogies in one matrix
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)

# Calculate the sum of all columns in the matrix using colSums()

# all_wars_matrix is available in your workspace
all_wars_matrix

# Total revenue for US and non-US
total_revenue_vector <- colSums(all_wars_matrix)

# Print out total_revenue_vector
total_revenue_vector

# We can use the square brackets [ ] to select one or
# multiple elements from a matrix. Whereas vectors have
# one dimension, matrices have two dimensions. we should
# therefore use a comma to separate that what to select
# from the rows from that what we want to select from the columns.

# For example:
#   
#   my_matrix[1,2] selects the element 
#   at the first row and second column.
# 
#   my_matrix[1:3,2:4] results in a matrix 
#   with the data on the rows 1, 2, 3 and columns 2, 3, 4.
#   
#   If you want to select all elements of a row or a column,
#   no number is needed before or after the comma, respectively:
#   
#     my_matrix[,1] selects all elements of the first column.
#     my_matrix[1,] selects all elements of the first row.

# all_wars_matrix is available in your workspace
all_wars_matrix

# Select the non-US revenue for all movies
non_us_all <- all_wars_matrix[,2]

# Average non-US revenue
mean(non_us_all)

# Select the non-US revenue for first two movies
non_us_some <- all_wars_matrix[,1:2]

# Average non-US revenue for first two movies
mean(non_us_some)