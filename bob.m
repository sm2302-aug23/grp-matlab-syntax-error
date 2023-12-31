% "bob" cursive plot retrieved from graph paper manually
x1 = [0.6 2.2 2.0 1.7 1.1 1.6 2.6 2.4 0.9 1.0 2.4 4.0 4.0 2.7 2.8 3.7 ...
    5.0 4.6 4.0 4.0 5.0 3.6];

y1 = [2.0 2.4 2.2 2.0 1.6 1.8 2.0 1.7 0.9 1.1 1.8 2.7 2.5 1.7 2.0 2.4 ...
    2.7 2.4 2.0 1.9 2.1 1.2];

n = length(x1);
t = 0:n-1; % Parametric coordinate t
tt = 0:0.1:n-1; % More dense coordinate tt for spline interpolation

 % Compute spline interpolation
 xx = spline(t, x1, tt);
 yy = spline(t, y1, tt);

 % Plot settings
 figure(1)
 plot(xx, yy, 'm', 'LineWidth', 1.5) % plot spline
 hold on
 plot(x1, y1, 'o', 'MarkerFaceColor', 'k') % plot data points
 axis([-0.2 6 -0.2 4.5])
 grid on
 title('Spline Interpolation of the word "bob" ')
 xlabel('x')
 ylabel('y')
 set(gca, 'FontSize', 10, 'LineWidth', 1)
 grid on