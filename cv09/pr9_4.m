clear all
clc
% 9. Testy dobré shody

% Pr 4.:
% V obchodě sledují počet návštěvníků za hodinu. Byly zjištěny následující 
% výsledky: 0 – 3x, 1 – 10x, 2 – 15x, 3 – 12x, 4 – 17x, 5 – 10x, 6 – 11x, 
% 7 – 9x, 8 – 5x, 9 – 5x, 10 – 4x, více než 10 – 5x (např.12). Určete na 
% hladině významnosti 5 %, zda data jsou z Poissonova rozdělení.

% Hypotézy:
% H0: data jsou z Poissonova rozdělení
% Ha: data nejsou z z Poissonova rozdělení

% potřebuji intenzitu data, všechna data do vektoru
%data=[0,0,0,1,1,1,1,1,1,1,1,1,1,...]
data(1,1:3)=0;
data(1,4:13)=1;
data(1,14:28)=2;
data(1,29:40)=3;
data(1,41:57)=4;
data(1,58:67)=5;
data(1,68:78)=6;
data(1,79:87)=7;
data(1,88:92)=8;
data(1,93:97)=9;
data(1,98:101)=10;
data(1,102:106)=12;

% Poiss kap.4.5 ... lambda = [něco/min] = [návštěvník/hodim]
% E=lambda*t    D=lambda*t
E=mean(data)

[h,p,stat]=chi2gof(data,'CDF',{@poisscdf,mean(data)})
%data
% Výsledek: h=1
% Hypotézu H0 zamítáme na hladině významnosti 5%.