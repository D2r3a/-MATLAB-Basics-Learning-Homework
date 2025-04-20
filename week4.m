name = input('Enter a name: ', 's');
reverse_name = fliplr(name);
disp(reverse_name);


originalMatrix = [1, 2, 3; 4, 5, 6; 7, 8, 9];
transposedMatrix = zeros(size(originalMatrix));

for i = 1:size(originalMatrix, 1)
    for j = 1:size(originalMatrix, 2)
        transposedMatrix(j, i) = originalMatrix(i, j);
    end
end

disp(transposedMatrix);


[x, y] = meshgrid(-2*pi:0.1:2*pi);
z = sin(x) .* cos(y);
surf(x, y, z);


matrix = randi([-10, 10], 3, 3);
logicalMatrix = matrix > 0;
newMatrix = matrix(logicalMatrix);
disp(newMatrix);


matrix = randi([1, 10], 3, 3);
meanValue = mean(matrix(:));
greaterThanMean = matrix > meanValue;
newMatrix = matrix(greaterThanMean);
disp(newMatrix);


x = -2:0.1:2;
y = -2:0.1:2;
[X, Y] = meshgrid(x, y);
figure
subplot(2, 2, 1);
Z1 = X.^2 - Y.^2;
surf(X, Y, Z1);
title('Saddle Function');

subplot(2, 2, 2);
Z2 = (1-X).^2 + 100*(Y-X.^2).^2;
surf(X, Y, Z2);
title('Rosenbrock Function');

subplot(2, 2, 3);
Z3 = X.^2 + Y.^2;
surf(X, Y, Z3);
title('Elliptic Paraboloid');

subplot(2, 2, 4);
Z4 = exp(-X.^2 - Y.^2);
surf(X, Y, Z4);
title('Gaussian Function');
