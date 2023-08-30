% zadani 210426, str. 55
clear all
clc

%pr12
% 600 krát hodíme kostkou. Pomocí binomického rozdělení, Poissonova 
% rozdělení a centrální limitní věty určete, jaká je pravděpodobnost, 
% že šestka padne 105 a vícekrát.

% Binomické rozdělení
binom = 1-binocdf(104,600,1/6);
% 1-bino -> 104 -> nad 104 ... 600 hodů ... 1/6 pravděpodobnost jedné
% strany kostky (jednoho jevu)

% Poissonovo rozdělení

% jevy jsou nezávislé
% -> vzorce pro BINOMICKÉ rozdělení
% E = n*p = 600*1/6 = 100
% D = n*p*(1-p) = 600*1/6*5/6 = 500/6

% chci součet
% platí předpoklady CLV ? -> ano

% parametry normálního rozdělení:
% u -> v binom rozdělení už E násobím všemi 600 ... už nemusim -> u = 100
% -> rozptyl G^2 také
% N(u = 100, G^2 = 500/6)
poiss = 1-normcdf(104,100,sqrt(500/6));