clear all
clc

% Testy Hypotéz, zadani 210426, str.44, 8.1.2
% pr5

% [H,P,CI,STATS] = ttest(X,V,alpha,tail)
% [H,P,CI,STATS] = ztest(X,střední hodnota,směrodatná odchylka,alpha,tail)	
% rozptyl je předem definován – extrémně vzácný případ

% Spotřeba téhož auta byla testována u 11 řidičů s výsledky
Spotreba=[8.8, 8.9, 9.0, 8.7, 9.3, 9.0, 8.7, 8.8, 9.4, 8.6, 8.9]

% Lze přijmout hypotézu danou výrobcem, že spotřeba je rovna 8.8 l/100 km?
% Lze na hladině významnosti 5 % přijmout tvrzení, že rozptyl spotřeby je 0,1?

stredni_hodnota = mean(Spotreba) % 8.9182

var(Spotreba) % rozptyl = 0.0616

% Ho: mi = 8.8 l/100km ... známá Hypotéza ... zadané výrobcem
% Ha: mi != 8.8 l/100km ... alternativní H

[H,P,CI,STATS] = ttest(Spotreba,8.8,0.05,'both')
% 0.05 -> hladina významnosti (5%)

% -> H=0
% -> P=0.1455
% -> CI=8.7514 9.0850

% Výsledek: Hypotézu Ho s hladinou významnosti 5% přijímáme.