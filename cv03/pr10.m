clear all
clc

syms a b x;

y=1-exp(-(x*a)^b); %distribuční funkce F(x)

z=diff(y) %hustota distribuční funkce f(x)= dF(x)/dx


