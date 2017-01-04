# -*- coding: utf-8 -*-
"""
Created on Wed Jan  4 18:12:19 2017

@author: Mohtashim
"""

# Import cars data
import pandas as pd
cars = pd.read_csv('cars.csv', index_col = 0)

# Convert code to a one-liner
sel = cars[cars['drives_right']]

# Print sel
print(sel)