# Importing Datasets

library(ranger)   
library(caret)   
library(data.table) 

creditcard_data <- read.csv("D:/Credit Card Fraud/CreditCard.csv")

# Data Exploration

dim(creditcard_data)
head(creditcard_data,6)
tail(creditcard_data,6)
table(creditcard_data$Class)
summary(creditcard_data$Amount)
names(creditcard_data)
var(creditcard_data$Amount)
sd(creditcard_data$Amount)

#To check Empty entry in dataset

colSums(is.na(creditcard_data))

# Data Manipulation

head(creditcard_data)
creditcard_data$Amount=scale(creditcard_data$Amount)  
NewData=creditcard_data[,-c(1)]    
head(NewData)

# Data Modelling

library(caTools)  
data_sample = sample.split(NewData$Class,SplitRatio=0.80)
train_data = subset(NewData,data_sample==TRUE)   
test_data = subset(NewData,data_sample==FALSE)
dim(train_data)
dim(test_data)

# Fitting Logistic Regression Model

Logistic_Model=glm(Class~.,test_data,family=binomial())  
summary(Logistic_Model)    

# Visualizing summarized model through the following plots

plot(Logistic_Model)

# ROC Curve to assess the performance of the model

library(pROC)
lr.predict = predict(Logistic_Model,test_data, probability = TRUE)
auc.gbm = roc(test_data$Class, lr.predict, plot = TRUE, col = "blue")

#pie chart plot 

table(creditcard_data$Class)
prop.table(table(creditcard_data$Class))

labels=c("NON_FRAUD","FRAUD")  
labels=paste(labels,round(100*prop.table(table(creditcard_data$class)),2))  
labels=paste0(labels,"%")    

pie(table(creditcard_data$Class),labels,col =c ("green","red"),main= "Pie chart of Credit Card Fraud Transaction") 
legend("topright", c("NON_FRAUD","FRAUD"), cex = 0.9, fill = c("green","red")) 
