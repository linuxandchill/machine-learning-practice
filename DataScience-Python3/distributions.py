from scipy.stats import norm
import matplotlib.pyplot as plt
import numpy as np


#gaussian curve
x = np.arange(-3, 3, 0.001)
#plt.plot(x, norm.pdf(x))

mu = 5.0
sigma = 2.0
values = np.random.normal(mu, sigma, 1000)
plt.hist(values, 50)
#plt.show

#exponential prob dis
x = np.arange(0, 10, 0.001)
plt.plot(x, expon.pdf(x))

#binomial prob mass fn
n , p = 10, 0.5
x = np.arange(0, 10, 0.001)
plt.plot(x, binom.pmf(x,n,p))

#poisson prob mass fn
#ex: website gets 500 avg hits per day,
#whats odds of getting 550?
mu= 500
x = np.arange(400,600, 0.5)
plt.plot(x, poisson.pmf(x, mu))
