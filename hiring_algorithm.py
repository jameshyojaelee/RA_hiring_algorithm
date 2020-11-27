import pandas as pd
import numpy as np
# from sklearn import preprocessing
import requests


filepath = 'C:/Users/james/Desktop/POLI170 Policy memo/RA_hiring_algorithm/RA_dataset.csv'

RA = pd.read_csv(filepath)
print(RA.iloc[:5])

# create subset without categorical values
RA2 = RA.drop(['race', 'major'], axis = 1)

# Data normalization is required since each column includes its own value range
# use subset to normalize columns using z-score 
normalized_data = (RA2-RA2.mean())/RA2.std()
print(normalized_data.iloc[:5])

# summarize categorical value from original data set
race_count = RA["race"].value_counts().to_frame()
major_count = RA["major"].value_counts().to_frame()
race_count
major_count

