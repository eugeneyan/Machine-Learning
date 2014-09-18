function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

#a1 equals the X input matrix with a column of 1's added (bias units) as the first column.
a1 = [ones(m, 1) X];

#z2 equals the product of a1 and Θ1
z2 = a1 * Theta1';

#a2 is the result of passing z2 through g()
a2 = sigmoid(z2);

#a2 then has a column of 1st added (bias units) as the first column.
a2 = [ones(m, 1) a2];

#z3 equals the product of a2 and Θ2
z3 = a2 * Theta2';

#a3 is the result of passing z3 through g()
a3 = sigmoid(z3);

# return p i.e., predictions)
[prob, p] = max(a3, [], 2);

% =========================================================================


end
