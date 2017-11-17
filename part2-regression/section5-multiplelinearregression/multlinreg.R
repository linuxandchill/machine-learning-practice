# Data Preprocessing Template

# Importing the dataset
dataset = read.csv('50_Startups.csv')

#encoding categorial data

dataset$State = factor(dataset$State,
                       levels = c("New York", "California", "Florida"), 
                       labels = c(1,2,3))

# Splitting the dataset into the Training set and Test set
# install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(dataset$Profit, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Feature Scaling
# training_set = scale(training_set)
# test_set = scale(test_set)


#fitting linea regression
regressor = lm(Profit ~ R.D.Spend + Marketing.Spend ,
               data = training_set)

#predicting test set results
y_pred = predict(regressor, newdata = test_set)
