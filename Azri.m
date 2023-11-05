% The x and y coordinate for creating the word 'Azri'
x4 = [3.00 2.50 2.00 1.00 1.00 3.50 5.00 3.50 5.00 6.00 6.00 5.90 ... 
    6.50 7.00 6.20 6.20 7.00 7.50 7.50 8.00 7.80 7.50];
y4 = [1.00 2.50 4.00 1.00 2.50 2.50 2.50 1.00 1.00 1.00 3.00 2.50 ...
    3.00 2.80 2.50 1.00 1.00 1.00 2.50 3.00 3.50 3.00];

n = length(x4);
t = 0:n-1; % Parametric coordinate t
tt = 0:0.05:n-1; % More precise coordination for t spline interpolation

% Using the spline interpolation
xx = spline(t, x4, tt);
yy = spline(t, y4, tt);

% Plot the graph 
figure(1)
plot(xx, yy, 'r', 'LineWidth', 1.5) % for spline
hold on
plot(x4, y4, 'ko', 'MarkerFaceColor', 'k')
axis([-0.2 6 -0.2 4.5])
grid on
title('Spline Interpolation of Cursive Word Azri')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on