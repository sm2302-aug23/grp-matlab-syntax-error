% x and y coordinates for the word 'yat'
x3 = [1.6 1.0 2.0 4.0 5.5 4.3 4.0 3.0 2.0 1.0 2.0 3.0 4.3 5.0 6.0 4.0 ...
  3.4 4.0 5.0 6.0 5.8 6.0 7.1 8.0 7.4 8.6 9.5 9.5 8.5 7.4 8 7.8 6.5 9.5];
y3 = [6.0 4.0 3.9 5.0 5.8 3.9 3.5 2.2 1.5 1.6 3.0 3.6 3.9 4.0 4.0 3.1 ...
  2.0 1.8 2.4 4.0 3.0 1.6 2.4 5.0 2.0 2.0 3.0 3.0 2.0 2.0 5.0 4.4 4.4 4.4];
 

 n = length(x3);
 t = 0:n-1; % Parametric coordinate t
 tt = 0:0.05:n-1; % Denser coordinate tt for spline interpolation

 % Spline interpolation polynomials
 xx = spline(t, x3, tt);
 yy = spline(t, y3, tt);

 % Plotting the result (x, y) spline curve word 'yat'
 figure(1)
 plot(xx, yy, 'b', 'LineWidth', 1.5) % plot spline
 hold on
 plot(x3, y3, 'bo', 'MarkerFaceColor', 'k') % plot data points
 axis([-0.2 6 -0.2 5])
 grid on
 title('Spline Interpolation of Cursive Word YAT')
 xlabel('x')
 ylabel('y')
 set(gca, 'FontSize', 10, 'LineWidth', 1)
 grid on