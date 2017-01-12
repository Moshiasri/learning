# -*- coding: utf-8 -*-
"""
Created on Thu Jan 12 15:19:45 2017

@author: Mohtashim
"""

# Import cars data
import pandas as pd
cars = pd.read_csv('cars.csv', index_col = 0)

# Create car_maniac: observations that have a cars_per_cap over 500
cpc= cars['cars_per_cap']
many_cars = cpc >500
car_maniac = cars[many_cars]


# Print car_maniac
print(car_maniac)