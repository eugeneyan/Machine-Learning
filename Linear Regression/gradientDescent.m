function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    
    # hypothesis function 
    hypo = (X * theta);
    
    # functions to calculate the gradient descent for each theta
    #temp1 = theta(1) - (alpha/m) .* sum((hypo-y)' * X(:, 1));
    #temp2 = theta(2) - (alpha/m) .* sum((hypo-y)' * X(:, 2));
    #theta(1) = temp1;
    #theta(2) = temp2;
    
    # alternative method (vectorized)
    grad = (1/m) .* X' * (hypo - y);
    theta = theta - (alpha .* grad);

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
