clear ; close all; clc

fprintf('Loading data ...\n');
%% Load Data
data = csvread('SOD Prediction.csv');
X = data(:, 1:20);
y = data(:, 21);
m = length(y);

% Print out some data points
fprintf('First 10 examples from the dataset: \n');
fprintf(' x = [%.0f %.0f], y = %.0f \n', [X(1:10,:) y(1:10,:)]');

fprintf('Program paused. Press enter to continue.\n');
        
pause;

% Scale features and set them to zero mean
fprintf('Normalizing Features ...\n');

[X mu sigma] = featureNormalize(X);
        
% Add intercept term to X
X = [ones(m, 1) X];

fprintf('Running gradient descent ...\n');
        
% Choose some alpha value
alpha = 0.01;
num_iters = 400;
        
% Init Theta and Run Gradient Descent
theta = zeros(21, 1);
[theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters);
        
% Plot the convergence graph
figure;
plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J');
        
% Display gradient descent's result
fprintf('Theta computed from gradient descent: \n');
fprintf(' %f \n', theta);
fprintf('\n');
        
        
        % Estimate the Sodium Count HERE
        
        
        d = [48 80 1.02 1 0 1 0 0 121 36 1.2 4.9 15.4 1 1 0 1 0 0 1];
        d = (d - mu) ./ sigma;
        d = [ones(1,1) d];
        price = d * theta; % You should change this
        
        
        % ============================================================
        
        fprintf(['Predicted the sodium count ' ...
                 '(using gradient descent):\n %f\n'], price);
        
        fprintf('Program paused. Press enter to continue.\n');
        pause;
        
