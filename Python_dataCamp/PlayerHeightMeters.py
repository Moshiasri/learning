# -*- coding: utf-8 -*-
"""
Created on Tue Dec  6 16:13:47 2016

@author: Mohtashim
"""

# Create list baseball 
height = [180, 215, 210, 210, 188, 176, 209, 200]

# Import numpy
import numpy as np

# Create a Numpy array from height: np_height
np_height = np.array(height)

# Print out np_height
print(np_height)

# Convert np_height to m: np_height_m
np_height_m = np_height * 0.0254

# Print np_height_m
print(np_height_m)
