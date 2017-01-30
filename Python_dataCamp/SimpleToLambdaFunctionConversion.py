# -*- coding: utf-8 -*-
"""
Created on Mon Jan 30 20:03:31 2017

@author: Mohtashim
"""

# Define echo_word as a lambda function: echo_word
echo_word = (lambda word1, echo: word1 * echo)

# Call echo_word: result
result = echo_word('hey', 5)

# Print result
print(result)
