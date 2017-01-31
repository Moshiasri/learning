# -*- coding: utf-8 -*-
"""
Created on Wed Feb  1 01:46:08 2017

@author: Mohtashim
"""
'''
Another way to raise an error is by usning raise.
Here we add a rause statement ti the shout_echo()
Function defined before to raise an error message
when the value supplied to by us to the echo 
argument is less than 0
'''
# Define shout_echo
def shout_echo(word1, echo=1):
    """Concatenate echo copies of word1 and three
    exclamation marks at the end of the string."""

    # Raise an error with raise
    if echo < 0:
        raise ValueError('echo must be greater than 0')
    
    # Concatenate echo copies of word1 using *: echo_word
    echo_word = word1 * echo

    # Concatenate '!!!' to echo_word: shout_word
    shout_word = echo_word + '!!!'

    # Return shout_word
    return shout_word

# Call shout_echo
shout_echo("particle", echo=5)
