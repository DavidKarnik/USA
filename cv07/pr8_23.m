clear all
clc

% Testy Hypotéz, zadani 210426, str.49, 8.2.3
% Dvouvýběrový test – Mannův- Whitneyův test
% pr23

% Mějme naměřená data ve vektorech x a y. Otestujte na hladině významnosti 
% 5 %, zda median je shodný. Testu obvykle předchází testování shody 
% rozptylů. Předpokládáme, že typ rozdělení je shodný 
% (testování se naučíme v kapitole 9).

x=[12,14,16,18,19,19,21,23,25,27,31,35,39,42];
y=[15,18,21,24,27,29,32,35];

% Testuji medián
% Hypotézy
% Ho: medián(x) = medián(y)
% Ha: medián(x) != medián(y)

% Testuji medián
% [H,P] =(X,Y,ALPHA,TAIL,VARTYPE)
% VARTYPE – %equal , ‘unequal’ – rozptyly jsou (nejsou) shodné, 
% test rozptylu předchází testu shody středních hodnot
[p,h] = ranl..něconěco(x,y,0.05,'both','exact')

% h -> 0
% p -> 0.71

% Výsledek: Hypotézu Ho přijímáme.