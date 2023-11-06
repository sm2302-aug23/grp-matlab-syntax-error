[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/i8q0vJZ5)
# Group Assignment (MATLAB)

This repository contains instructions for SM-2302 MATLAB group assignment.

The assignment is due on **Tuesday, 7 November 2023 at 12:00 PM**.

Understand the sample code given in the [`Group2-2023.pdf`](Group2-2023.pdf) document, and read the instructions carefully.

Read [`notes.md`](notes.md) for some advice on good MATLAB programming style and marking scheme.


# Spline Interpolation of Cursive Word BOB (19B9046)

![bob](https://github.com/sm2302-aug23/grp-matlab-syntax-error/assets/141397239/16dbd0ea-3b90-4f1b-8f94-9ecf17132c33)

# Spline Interpolation of Cursive Word Adam (19B9027)

![Adam](https://github.com/sm2302-aug23/grp-matlab-syntax-error/assets/142872329/92e59424-a215-4eaa-a7ec-3e4be6627696)

# Spline Interpolation of Cursive Word yat (19B9029)

![yat](https://github.com/sm2302-aug23/grp-matlab-syntax-error/assets/141397205/c34aedff-0d61-4051-8ab6-af3326782e7c)

# Spline Interpolation of Cursive Word Azri (19B9052)

![Azriword](https://github.com/sm2302-aug23/grp-matlab-syntax-error/assets/141397301/df0f74b2-cfab-41fa-bead-c9eb97c953b4)

# This is the script to subplot all members name to present in one graph

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

![Subplot_name](https://github.com/sm2302-aug23/grp-matlab-syntax-error/assets/141397301/34158eff-94dc-4f5d-bb11-69b22074d40e)

