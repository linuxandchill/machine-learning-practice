# Data Preprocessing Template

# Importing the dataset
dataset = read.csv('Position_Salaries.csv')

#select columns we're gonna use
dataset = dataset[2:3]

# Splitting the dataset into the Training set and Test set
# install.packages('caTools')
#library(caTools)
#set.seed(123)
#split = sample.split(dataset$Salary, SplitRatio = 0.8)
#training_set = subset(dataset, split == TRUE)
#test_set = subset(dataset, split == FALSE)

# Feature Scaling
# training_set = scale(training_set)
# test_set = scale(test_set)

lin_reg = lm(formula = Salary ~ . , data = dataset)

#create polynomial term
#in this case of "Level" column
dataset$Level2 = dataset$Level^2
dataset$Level3 = dataset$Level^3
#add 4th degree for fun
dataset$Level4 = dataset$Level^4
poly_reg = lm(formula = Salary ~ . , data = dataset)

library(ggplot2)
#plot linear reg results
ggplot() + 
  geom_point(aes(x = dataset$Level, y = dataset$Salary), 
             colour = "red") +
  geom_line(aes(dataset$Level, y = predict(lin_reg, newdata = dataset)), 
            colour = "blue") +
  ggtitle("Salary reality") +
  xlab("Level") + 
  ylab("Salary")

#plot polynomial reg results
ggplot() + 
  geom_point(aes(x = dataset$Level, y = dataset$Salary), 
             colour = "red") +
#all that needs to change is regressor
#from lin_reg to poly_reg
  geom_line(aes(dataset$Level, y = predict(poly_reg, newdata = dataset)), 
            colour = "blue") +
  ggtitle("Salary reality") +
  xlab("Level") + 
  ylab("Salary")

#predict value with linear reg
y_pred = predict(lin_reg, data.frame(Level = 6.5))

#predict value with polynomial reg
y_pred = predict(poly_reg, data.frame(Level = 6.5,
                                      Level2 = 6.5^2,
                                      Level3 = 6.5^3,
                                      Level4 = 6.5^4))
