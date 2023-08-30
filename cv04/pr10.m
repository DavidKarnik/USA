clear all
clc

%Př.10
%pravděpodobnost z 32 karet budou při vylosování 3 karet právě 2 esa

%kraty vracíme:
binopdf(2,3,4/32) % == binopdf(2,3,1/8)

%karty nevracíme
hygepdf(2,32,4,3) % != hygepdf(2,8,1,3)