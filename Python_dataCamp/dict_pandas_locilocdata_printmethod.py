# -*- coding: utf-8 -*-
"""
Created on Wed Dec 28 09:47:38 2016

@author: Mohtashim
"""

# Import cars data
import pandas as pd
cars = pd.read_csv('cars.csv', index_col = 0)

# Print out observation for Japan
print(cars.loc['JAP'])
print(cars.iloc[4])

# Print out observations for Australia and Egypt
print(cars.loc[['AUS','EG']])
print(cars.iloc[[1,6]])