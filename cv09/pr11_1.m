clear all
clc
% 11. Úvod do korelační a regresní analýzy
% 11.1	Lineární regrese

% Pr 1.:
% Nalezněte parametry lineární regrese (y=ax+b) pro následující data: 
% x=[3,5,8,11,12,14,15]; y=[6,11,15,22,25,27,30];. Určete parametry a 
% zjistěte, zda parametr b se může rovnat 0. Vysvětlete výslednou tabulku. 

% ? b=0 -> není posun na y ose ... přímka prochází počátkem
x=[3,5,8,11,12,14,15];
y=[6,11,15,22,25,27,30];

plot(x,y,'x')
LM=fitlm(x,y,'linear')

% H0: parametr = 0
% Ha: parametr != 0

% dle tabulky
% Linear regression model:
%   y ~ 1 + x1
% y = 0.39352 + 1.9595x ... (odhady parametrů - Estimate Coeff.)
% y = b + ax
% SE -> směrodatná odchylka
% parametr b může být 0, protože
% pValue = 0.65 -> H0 přijímáme <-

% pValue > 0.5 -> > 50%, takže spíše ano (platí h0)

% Estimated Coefficients: TABULKA
% První řádek -> jestli parametr b může být = 0
% Druhý řádek -> jestli parametr a může být = 0
