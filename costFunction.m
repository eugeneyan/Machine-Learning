function J = costFunction(x, y, theta)

# x is the 'design matrix' containing our training examples
# y is the class labels

m = size(x, 1);         % number of training examples
predictions = x*theta;    % predictions of hypothesis on all examples
sqrErrors = (predictions - y).^2;  %squared errors

J = 1/(2*m) * sum(sqrErrors);