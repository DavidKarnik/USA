clear all
clc

%Nakreslete graf, kde budou vyneseny hustoty pravděpodobnosti 
% z normálního rozdělení s následujícími parametry:
% 0 , 1 ... střed v 0
% 0 , 4
% 4 , 1 ... střed v 4
% 4 , 4

x=-10:0.1:10; %rozsah osy x
y=normpdf(x,0,1); % norm rozdělení

figure
subplot (2,2,1)
%chci vykreslit hustotu, proto volím příkaz normpdf
y=normpdf(x,0,1);
plot(x,y)
title ('normalni rozdeleni mu=0, sigma=1')

subplot (2,2,2)
y=normpdf(x,0,2);
plot(x,y)
title ('normalni rozdeleni mu=0, sigma=2')

subplot (2,2,3)
y=normpdf(x,4,1);
plot(x,y)
title ('normalni rozdeleni mu=4, sigma=1')

subplot (2,2,4)
y=normpdf(x,4,2);
plot(x,y)
title ('normalni rozdeleni mu=4, sigma=2')