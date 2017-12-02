import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("PastHires.csv")
print(df.head(2)) 

cols = df.columns
rows = len(df)
size = df.size

hired = df['Hired'][:5]

range_rows = df[['Hired', 'Years Experience']][:5]

value_counts = df['Employed?'].value_counts()

degree_counts = df['Level of Education'].value_counts()
plotted_degree_counts = degree_counts.plot(kind='bar')
plt.show(plotted_degree_counts)
print(degree_counts)

