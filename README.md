# Credit-Card-Fraud-
## Aim of Project

The aim of this R project is to build a classifier that can detect credit card fraudulent transactions.
I used a machine learning algorithms like Logistic Regression,that will be able to discern fraudulent from non-fraudulent ones.

#Library use -

library(ranger)   #A fast implementation of Random Forests, particularly suited for high dimensional data
library(caret)    #The package contains tools for: data splitting. pre-processing. feature selection.
library(data.table) #R package that provides an enhanced version of data.frame 
#library(caTools)  -Contains several basic utility functions including: moving (rolling, running) window statistic functions, read/write for GIF and ENIV.

### Data Exploration

First I imported the datasets that contain transactions made by credit cards.
 I then explored the data that is contained in the ```creditcard_data``` dataframe.
 After displaying the ```creditcard_data``` using the ```head()``` function as well as the ```tail()``` function,
 I proceeded to explore the other components of this dataframe. 

# use of scale -

subtracts the values of each column by the matching “center” value from the argument.

#use of set.seed -

#set.seed - #The main point of using the seed is to be able to reproduce a particular sequence of 'random' numbers.

### Data Modelling

After standardizing the entire dataset,
 I split the dataset into training set as well as test set with a split ratio of ``0.80``. 
This means that 80% of the data will be attributed to the train_data whereas 20% will be attributed to the test_data. 
I then found the dimensions using the dim() function.

### Data Exploration

First I imported the datasets that contain transactions made by credit cards.
 I then explored the data that is contained in the ```creditcard_data``` dataframe.
 After displaying the ```creditcard_data``` using the head() function as well as the tail() function,
 I proceeded to explore the other components of this dataframe. 

#use of paste() -

#The paste() is a built-in R function used to concatenate vectors by converting them into character.

#use of paste0() -

#The paste0() is a built-in R function used to concatenate all elements without a separator. 

### Fitting Logistic Regression Model

In this section of the project, I fit the model.
 I began with logistic regression. I used it for modeling the outcome probability of fraud/not fraud.
 I proceeded to implement this model on the test data. Once I summarised the model,
 I visualized it through plots. 
In order to assess the performance of the model, 
I portrayed the Receiver Optimistic Characteristics or ```ROC curve```. For this,
 I first imported the ROC package and then plotted the ROC curve to analyze its performance.

## Conclusion

Concluding our R language project,
 I learnt how to develop a credit card fraud detection model using machine learning.
 I used a ML algorithms to implement this model and also plotted the respective performance curves for the models.
 I also learnt how data can be analyzed and visualized to discern fraudulent transactions from other types of data.
