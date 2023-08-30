clear all
clc
% 11. Úvod do korelační a regresní analýzy
% 11.1	Lineární regrese

% Pr 2.:
% Nalezněte parametry lineární regrese pro následující data: 
% x=[2,5,8,11,5,10,6]; y=[6,11,15,22,25,27,30];. 
% Vykreslete data. Je daný model lineární regrese vhodný? Vysvětlete. 

x=[2,5,8,11,5,10,6];
y=[6,11,15,22,25,27,30];

%plot(x,y,'x');

LM=LinearModel.fit(x,y) % == LM=fitlm(x,y) jen je i pro vykreslení
plot(LM)

% Tabulka
% Je daný model lineární regrese vhodný ?

% R-squared: 0.291 ... je pouze 0.291, takže data jsou daleko od proložení,
% není to kvalitní ( nesmí být menší než 0.8)

% F-statistic vs. constant model: 2.05, p-value = 0.212 ... náš model je
% skoro stejně dobrý jako konstantní model, to není správně

% Model není vhodný