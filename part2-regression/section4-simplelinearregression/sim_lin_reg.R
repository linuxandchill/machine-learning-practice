#preprocess data

#import data

dataset = read.csv("Data.csv")

#missing data
dataset$Age = ifelse(is.na(dataset$Age), 
                     #if true
                      ave(dataset$Age, FUNC = function(x) mean(x, na.rm = TRUE)), 
                     #if false
                      dataset$Age
                     )
