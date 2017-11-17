# Polynomial Regression

# Importing the dataset
dataset = read.csv('Position_Salaries.csv')
dataset = dataset[2:3]

# Splitting the dataset into the Training set and Test set
# # install.packages('caTools')
# library(caTools)
# set.seed(123)
# split = sample.split(dataset$Salary, SplitRatio = 2/3)
# training_set = subset(dataset, split == TRUE)
# test_set = subset(dataset, split == FALSE)

#---------------------------------------------#
# Feature Scaling


#---------------------------------------------#
# Fitting Polynomial Regression to the dataset


#---------------------------------------------#
# Create regressor


#---------------------------------------------#
# Predicting a new result with regression model
y_pred = predict(regressor, data.frame(Level = 6.5))

#---------------------------------------------#
# Visualising the Regression Model results (for higher resolution and smoother curve)
library(ggplot2)

#build vector of imaginary levels 
#predict 90 salaries of 90 levels instead of just 10
x_grid = seq(min(dataset$Level), max(dataset$Level), 0.1)

ggplot() +
  geom_point(aes(x = dataset$Level, y = dataset$Salary),
             colour = 'red') +
geom_line(aes(x = x_grid, y = predict(regressor,
                                      newdata = data.frame(Level = x_grid))),
                                                           
          colour = 'blue') +
ggtitle('Truth or Bluff (Polynomial Regression)') +
xlab('Level') +
ylab('Salary')
                             
