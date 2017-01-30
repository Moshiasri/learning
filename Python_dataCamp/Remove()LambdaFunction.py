# -*- coding: utf-8 -*-
"""
Created on Mon Jan 30 21:28:45 2017

@author: Mohtashim
"""
'''
The reduce() function is useful for 
performing some computation on a list &
returns a single value as a result.
'''

# Import reduce from functools
from functools import reduce 

# Create a list of strings: stark
stark = ['robb', 'sansa', 'arya', 'eddard', 'jon']

# Use result() to apply a lambda function over stark: result
result = reduce(lambda item1, item2 : item1 + item2 , stark)

# Print the result
print(result)
