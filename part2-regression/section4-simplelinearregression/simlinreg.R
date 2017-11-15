#preprocess data

#import data
dataset = read.csv("Salary_Data.csv")

#splitting into training & test sets
library(caTools)
set.seed(123)
split = sample.split(dataset$Salary, SplitRatio = 2/3) 
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)


#fitting regression to training set
#using lm function

#x ~ y means x is proprtional to y
regressor = lm(formula = Salary ~ YearsExperience,
               data = training_set)


#predicting test set results
y_pred = predict(regressor, newdata = test_set)

#plot with ggplot2 TRAINING SET
library(ggplot2)
ggplot() + 
  geom_point(aes(x = training_set$YearsExperience, y = training_set$Salary), 
             colour = "red" ) + 
  geom_line(aes(x = training_set$YearsExperience, 
                y = predict(regressor, newdata = training_set)), 
               color="blue") + 
  ggtitle("Salary vs Exp (training set)") +
  xlab("Years") + 
  ylab("Salary")

#TEST SET PLOT
ggplot() + 
  geom_point(aes(x = test_set$YearsExperience, y = test_set$Salary), 
             colour = "red" ) + 
  geom_line(aes(x = training_set$YearsExperience, 
                y = predict(regressor, newdata = training_set)), 
               color="blue") + 
  ggtitle("Salary vs Exp (test set)") +
  xlab("Years") + 
  ylab("Salary")



