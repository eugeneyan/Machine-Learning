# octave tutorial
5 + 6

# assigning variables
a = 3
b = 'hi'
c = (3 > 1)

# to only display the value
disp(a)
disp(sprintf('2 decimals: %0.2f', a))

# plots
w = -6 + sqrt(10) * (randn(1, 10000));
hist(w)

# plot histogram with 50 bins
hist(w, 50)

# create identity matrix
eye(4) ##creates a 4x4 identity matrix

# get help for eye
help eye;

x = [2 4; 4 5]
y = [1 5; 1 5]

# moving data in octave
A = [1 2; 3 4; 5 6]
size(A)

# for loops
v = zeros(10, 1)
for i = 1:10,
    v(i) = 2^i;
end

# while loops
i = 1
while i <= 5,
    v(i) = 100;
    i = i+1
end

# break on while loop
i = 1
while true, 
    v(i) = 999;
    i = i+1;
    if i == 6,
        break;
    end;
end

# if-else statement

v(1) = 2
if v(1) == 1,
   disp('The value is one');
elseif v(1) == 2,
   disp('The value is two');
else,
   disp('The value is not one or two.');
end