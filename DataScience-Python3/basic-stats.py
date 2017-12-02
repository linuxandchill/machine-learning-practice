import numpy as np
import matplotlib.pyplot as plt

incomes = np.random.normal(27000, 15000, 10000)
mean = np.mean(incomes)

plt.hist(incomes, 50)
#plt.show()

ages = np.random.randint(18, high=90, size=500)

