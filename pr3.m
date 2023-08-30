clear all
clc

% priklad 3.

% pro 2022
% porucha za stroj za 1 směnu za 1 rok
lambda = 5 / (6 * 1 * 1);
% pro rok 2024, 30 strojů 2 směny 1 rok
t = 30 * 2;
% střední hodnota poruch pro 2024
str_hodnota = lambda * t; % == 50

% Kolik bude poruch dle Poissonova rozdělení pro přesnost 99.9%, inv
% protože neznám počet poruch
P = poissinv(0.999,str_hodnota); % == 73
% == 73 poruch za rok 2024 s pravděpodobností 99,9%
% takže když se kupuje 4x za rok náhradní díly, tak 73/4
% na skladě mít 18.25 náhradních dílů ... 19 náhradních dílů