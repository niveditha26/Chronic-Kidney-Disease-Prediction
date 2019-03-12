# Chronic-Kidney-Disease-Prediction

Prediction of Chronic Kidney Disease using the dataset https://archive.ics.uci.edu/ml/datasets/chronic_kidney_disease#

This data set has a lot of missing values, for filling in those values you can do 2 things 

1. Take the mean of the values and replace the missing porting with the mean.

2. Removing the data with missing values ( this would result in the loss of data )

3. Predict the missing values using Multi-Variate Linear Regression.

Multi-Variate Linear Regression 
-
In the dataset we have a lot of missing data for the columns rbc, pcv,wbcc, rbcc, pot, sod

So , for example, if we want to calculate the missing values of sodium , we can apply Multi-Variate Linear Regression on the rest of the data without considering the other 5 columns.

Logistic Regression
-

This is where the prediction takes place after filling out the missing values.

# The accuracy of the model comes out to be 99.0%







