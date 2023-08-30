clear all
clc

x = importdata('P0309.mat');
%x = sort(x);

subplot(2,2,1);
histogram(x,10)
title('x,10');

subplot(2,2,2);
histogram(x,100);
title('x,100');

subplot(2,2,3);
histogram(x,500);
title('x,500');

subplot(2,2,4);
histogram(x,5000);
title('x,5000');
