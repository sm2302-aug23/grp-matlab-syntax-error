% Loading respective script fetched from each member via github
run('bob.m');  
run('Yat.m');  
run('Azri.m');  
run('Adam.m'); 

% load plot_spline.m function for spline to work


% subplot each member's cursive interpolation data

subplot(2, 2, 1);
plot_spline(x1, y1); % plot_spline spline interpolation function 
title('19b9046');
axis([0 6 0 5]); % axis to fit subplot

subplot(2, 2, 2);
plot_spline(x2, y2); % plot_spline spline interpolation function 
title('19b9027');
axis([-1 6 0 5]); % axis to fit subplot

subplot(2, 2, 3);
plot_spline(x3, y3); % plot_spline spline interpolation function 
title('19b9029');
axis([0 10 0 7]); % axis to fit subplot

subplot(2, 2, 4);
plot_spline(x4, y4); % plot_spline spline interpolation function 
title('19b9052');
axis([0 10 0 5]); % axis to fit subplot