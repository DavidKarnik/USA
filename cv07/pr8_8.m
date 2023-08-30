clear all
clc

% Testy Hypotéz, zadani 210426, str.45, 8.1.4
% Jednovýběrové testy
% Znaménkový test
% ptám se kolik je dat větších než medián ( > 50% dat)
% pr8
 

% Otestujte na hladině významnosti 5 % znaménkovým testem, zda medián je roven 25
x=[-6,-3,-1,0,2,3,5,6,7,8,9,11,12,14,15,18,22,28,32,37,41];
% Pozn: Nepředpokládáme, že data jsou z normálního rozdělení

% Hypotézy
% Ho: X(0.5) = 25 ... medián = 25
% Ha: X(0.5) != 25

[p,h] = signtest(x,25,0.05)

% p = 0.0072
% h = 1

% Výsledek: Hypotézu Ho zamítáme.