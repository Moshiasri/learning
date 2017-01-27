# -*- coding: utf-8 -*-
"""
Created on Fri Jan 27 19:31:01 2017

@author: Mohtashim
"""

"""
For your convenience, pandas has been imported as pd and the 'tweets.csv' file
 has been imported into the dataframe tweets_df. Parts of the code from your 
 previous work are also provided.
"""

# Import Pandas Library
import pandas as pd

# Get the CSV file and change it to dataframe 
tweets_df = pd.read_csv("tweets.csv")

# Define count_entries()
def count_entries(df, *args):
    """Return a dictionary with counts of
    occurrences as value for each key."""
    
    #Initialize an empty dictionary: cols_count
    cols_count = {}
    
    # Iterate over column names in args
    for col_name in args:
    
        # Extract column from DataFrame: col
        col = df[col_name]
    
        # Iterate over the column in dataframe
        for entry in col:
    
            # If entry is in cols_count, add 1
            if entry in cols_count.keys():
                cols_count[entry] += 1
    
            # Else add the entry to cols_count, set the value to 1
            else:
                cols_count[entry] = 1

    # Return the cols_count dictionary
    return cols_count

# Call count_entries(): result1
result1 = count_entries(tweets_df, 'lang')

# Call count_entries(): result2
result2 = count_entries(tweets_df, 'lang', 'source')

# Print result1 and result2
print(result1)
print(result2)
