# -*- coding: utf-8 -*-
"""
Created on Mon Jan 30 21:20:02 2017

@author: Mohtashim
"""

'''
 The function filter() offers a way to filter 
 out elements from a list that doesn't satisfy 
 certain criteria.
'''

# Create a list of strings: fellowship
fellowship = ['frodo', 'samwise', 'merry', 'aragorn', 'legolas', 'boromir', 'gimli']

# Use filter() to apply a lambda function over fellowship: result
result = filter(lambda member: len(member) > 6, fellowship)

# Convert result to a list: result_list
result_list = list(result)

# Convert result into a list and print it
print(result_list)
