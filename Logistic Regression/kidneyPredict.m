function p = kidneyPredict (theta,X)

m = size(X,1);

p = zeros(m,1);

p = sigmoidKidney(X*theta)>=0.5;


end
