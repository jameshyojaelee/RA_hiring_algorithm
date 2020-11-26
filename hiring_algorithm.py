import pandas as pd
import requests

filepath = 'C:/Users/james/Desktop/POLI170 Policy memo/RA_hiring_algorithm/RA_dataset.csv'

RA_data = pd.read_csv(filepath)
print(RA_data.iloc[:5])
