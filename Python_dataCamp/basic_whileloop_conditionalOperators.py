# -*- coding: utf-8 -*-
"""
Created on Thu Jan 12 18:07:22 2017

@author: Mohtashim
"""

# Initialize offset
offset = -6

# Code the while loop
while offset != 0 :
    print("correcting...")
    if offset > 0 :
        offset = offset - 1
    else :
        offset = offset + 1
    print(offset)