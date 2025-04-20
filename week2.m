
B = [2:2:14; 15:5:45; 54:3:72];
[row, col] = size(B);
disp(['عدد 66 به روش اول: ' num2str(B(3, 5))]);
disp(['عدد 66 به روش دوم: ' num2str(B(5, 3))]);
rotated_row = flipud(B);
rotated_col = fliplr(B);
rotated_B = rotated_col;
[row_rotated, col_rotated] = size(rotated_B);
column_means = mean(B);
total_mean = mean(B(:));
 

c = [1; 1.1; 1.4; 0.3];
x = 0:0.01:10;
figure;
hold on;
for i = 1:length(c)
    y = c(i) * x.^2;
    plot(x, y, 'LineWidth', 2, 'DisplayName', ['c=' num2str(c(i))]);
end
legend;
xlabel('x');
ylabel('y');
title('Graph of y = cx^2 for different values of c');
