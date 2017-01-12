# -*- coding: utf-8 -*-
"""
Created on Thu Jan 12 19:24:37 2017

@author: Mohtashim
"""

# areas list
areas = [11.25, 18.0, 20.0, 10.75, 9.50]

# Change for loop to use enumerate()
for index,a in enumerate(areas) :
    print("index" + str(index)+ ": " + str(a))