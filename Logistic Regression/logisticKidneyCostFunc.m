function [J, grad] = logisticKidneyCostFunc(theta, X,y)


% Initialising some useful values

m = length(y);

J = 0;

grad = zeros(size(theta));


J = (1 / m) * sum( -y'*log(sigmoidKidney(X*theta)) - (1-y)'*log( 1 - sigmoidKidney(X*theta)) );

grad = (1 / m) * sum( X .* repmat((sigmoidKidney(X*theta) - y), 1, size(X,2)) );


end

