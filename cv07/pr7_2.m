clear all
clc

% Testy Hypotéz, zadani 210426, str.43
% pr2
x=[2.22, 3.54, 2.37, 1.66, 4.74, 4.82, 3.21, 5.44, 3.23, 4.79, 4.85, 4.05, 3.48, 3.89, 4.90, 5.37];

stredni_hodnota=sum(x)/16; % == mean(x)

%rozptyl= 1.35 ... ??? jak vypočítat

[h,p,ci,stat] = vartest(x,0.6,0.05,'right')

% x - data
% 0.6 - protože Ho: G^2 <= 0.6
% 0.05 - alpha
% 'right' - protože Ha: G^2 > 0.6