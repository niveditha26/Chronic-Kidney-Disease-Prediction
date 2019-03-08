clear;
close all;
clc

data = csvread('Kidney Missing Values.csv');

X = data(:,1:24);
y = data(:,25);


%============= Computing the Cost and Gradient ==============

% Setting up the data matrix appropriately

[m,n] = size(X);


% Adding intercept term ( that is column of 1's)
                         
X = [ones(m,1) X];
                    
% Inititalising the Theta Parameters
                         
initial_theta = zeros(n+1,1);
                         
[cost , grad] = logisticKidneyCostFunc(initial_theta,X,y);
                         
cost;
                         
grad;

                         % Optimising using built in function fminunc
                         
                         options = optimset('GradObj', 'on', 'MaxIter', 4000);
                         
                         [theta, cost] = ...
                         fminunc(@(t)(logisticKidneyCostFunc(t, X, y)), initial_theta, options);
                         
                         theta;
                         
                         
                          % Entering the blood report and other data that we want to calculate
                         
                         prob = sigmoidKidney([1 58 80 1.025 0 0 1 0 0 0 131 18 1.1 141 3.5 15.8 53 6800 6.1 0 0 0 1 0 0]*theta);
                         
                         printf('Chronic Disease Probability %.1f%% \n', round(prob*100));
                         
                         p = kidneyPredict(theta,X);
                         
                         p2 = sigmoidKidney(y)>0.5;
                         
                           printf('Accuracy of Model : %.1f%% \n',mean(double(p==p2))*100);
                         
                         
