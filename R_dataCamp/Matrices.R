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