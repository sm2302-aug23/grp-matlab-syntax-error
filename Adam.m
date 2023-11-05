%Coordinate for cursive  letters
x2 = [2 1 0 -0.04 0.08 0.4 1 2 3 3.3 3.2 2.4 2.8 3.2 3.4 3.4 3 3.3 4 4 3.5 3.7 4 4.1 4.1 4.2 4.25 4.1 4.25 4.45 4.8 5];
y2 = [1 4 1 2.5 2.5 2.5 2.5 2.5 2.5 2 1.5 1.4 2.4 3 3.5 4 3.2 1.5 2 2.5 2 1.5 2 2.2 1.5 1.5 2.5 2.5 2.32 2 2.5 1.5];

 n = length(x2);
 t = 0:n-1; % Parametric coordinate t
 tt = 0:0.001:n-1; % More dense coordinate tt for spline interpolation

 % Formule spline interpolation
 xx = spline(t, x2, tt);
 yy = spline(t, y2, tt);

 % Plot settings
 figure(1)
 plot(xx, yy, 'k', 'LineWidth', 1.5) % plot spline
 hold on
 plot(x2, y2, 'bo', 'MarkerFaceColor', 'b') % plot data points
 axis([-0.2 6 -0.2 4.5])
 grid on
 title('Spline Interpolation of Cursive word Adam')
 xlabel('x')
 ylabel('y')
 set(gca, 'FontSize', 10, 'LineWidth', 1)
 grid on

 