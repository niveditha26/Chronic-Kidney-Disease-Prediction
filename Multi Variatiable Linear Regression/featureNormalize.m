function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       


mu = mean(X_norm);

% Createa a matrix 'mu' which contains column wise mean i.e top to bottom mean in 1 column i.e. a 1xn vector containing mean values of each column

sigma = std(X_norm);

% Creates a matrix 'sigma' which contains column wise standard deviation similar to vector 'mu'

tf_mu = X_norm - repmat(mu,length(X-X_norm),1);

% Creating an array which subtract the mean from X_norm

tf_std = repmat(sigma,length(X_norm),1);



X_norm = tf_mu ./ tf_std;

% This creates a new matrix which is complete with the subtraction of mean and division of standard deviation from it







% ============================================================

end
