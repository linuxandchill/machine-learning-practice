from scipy.stats import norm
import matplotlib.pyplot as plt

x = np.arange(-3, 3, 0.001)

plt.plot(x, norm.pd(x))
plt.plot(x, norm.pdf(x, 1.0, 0.5))
#save to file
#plt.savefig('path', format='png')
plt.show()

#box and whisker plot

uniformSkewed = np.random.rand(100) * 100 - 40
high_outliers = np.random.rand(10) * 10 + 100
low_outliers = np.random.rand(10) * -50 - 100

data = np.concatenate((uniformSkewed, high_outliers, low_outliers))

plt.boxplot(data)
plt.show()

#scatter
X = randn(500)
Y = randn(500)
plt.scatter(X,Y)
plt.show()

