clear all;

x = importdata('P0305.mat');
x = sort(x);
%plot(sort(x)); %stejné
%ecdf(x); %distribuční fnkce
histogram(x,50); %histogram