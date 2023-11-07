function plot_spline(x,y)
    n = length(x);
    t = 0:n-1; % Parametric coordinate t
    tt = 0:0.1:n-1; % More dense coordinate tt for spline interpolation

    % Compute spline interpolation
    xx = spline(t, x, tt);
    yy = spline(t, y, tt);

    % Plot settings
    plot(xx, yy, 'm', 'LineWidth', 1.5) % plot spline
    hold on
    plot(x, y, 'x', 'MarkerFaceColor', 'k') % plot data points
    axis([-0.2 6 -0.2 4.5])
    grid on
    xlabel('x')
    ylabel('y')
    set(gca, 'FontSize', 10, 'LineWidth', 1)
    grid on
end