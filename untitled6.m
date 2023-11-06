%Coordinate for cursive  letter h
x2 = [1 0.8 1 1 0.9 1.7 2.4];
y2 = [3 2.8 3.5 0.5 1 2 0.5];

[1,3;0.8,2.8;1,3.5;1,0.5;0.9,1;1.7,2;2.5,0.5]

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

 