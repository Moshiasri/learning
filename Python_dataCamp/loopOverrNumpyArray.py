# -*- coding: utf-8 -*-
"""
Created on Fri Jan 13 19:43:21 2017

@author: Mohtashim
"""

# Import numpy as np
import numpy as np

# Write a for loop that iterates over all elements in np_height 
# And prints out "x inches" for each element,
# Where x is the value in the array.
# For loop over np_height
for el in (np_height) :
    print(str(el) + " inches " )

# For loop over np_baseball
# Write a for loop that visits every element
# of the np_baseball array and prints it out.
for x in np.nditer(np_baseball) :
    print(str(x))