# -*- coding: utf-8 -*-
"""
Created on Tue Dec  6 15:39:13 2016

@author: Mohtashim
"""

import numpy as np

height = [1.73, 1.68, 1.71, 1.89, 1.79]

weight = [65.4, 59.2, 63.6, 88.4, 68.7]

np_height = np.array(height)
np_weight = np.array(weight)

bmi = np_height / ((np_weight) ** 2)

print(bmi)




 