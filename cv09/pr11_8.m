clear all
clc
% 11. Úvod do korelační a regresní analýzy
% 11.1	Lineární regrese

% Pr 8.:
% Mějte data: x=[1,2,3,4,5,6,6.5]; y=[3,5.1,6.9,8.8,10.9,13.3,14.1];
% Proložte data kvadratickým modelem. Určete 95% interval spolehlivosti pro
% člen ax^2. V případě, že některý člen není třeba, vypusťte ho, a nahraďte
% jiným modelem.

x=[1,2,3,4,5,6,6.5];
y=[3,5.1,6.9,8.8,10.9,13.3,14.1];

LM1=fitlm(x,y,'quadratic')
LM2=fitlm(x,y) % lineární

% Tabulka
% sloupec Estimate -> odhadovaný koeficient
% sloupec SE -> směrodatná odchylka
% sloupec pValue -> udává jestli můžeme koeficient vynechat (když je < 0.5)
%z výsledků získaného parametru 0.0322 a směrodatné odchylky 0.0194 
%se vypočte intervalový odhad 

amin=0.0322-0.0194.*tinv(0.975,5)
amax=0.0322+0.0194.*tinv(0.975,5)