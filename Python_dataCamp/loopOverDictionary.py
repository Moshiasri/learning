# -*- coding: utf-8 -*-
"""
Created on Fri Jan 13 19:23:52 2017

@author: Mohtashim
"""

# Definition of dictionary
europe = {'spain':'madrid', 'france':'paris', 'germany':'bonn', 
          'norway':'oslo', 'italy':'rome', 'poland':'warsaw', 'australia':'vienna' }
          
# Iterate over europe
for key, value in europe.items() :
    print(" the capital of " + key + " is " + str(value))