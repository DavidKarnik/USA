clear all
clc
% USA, 22.6.2023 Zkouška

% pr5

t = [32, 36, 43, 47, 52, 56, 61, 67, 72, 78, 84, 89, 103, 107, 112, 121, 145, 167, 181, 189, 194, 203, 209, 212, 216, 223, 227, 234, 241, 248, 255, 261, 267, 273, 279, 285, 291, 294, 297, 303, 305, 309, 313, 317, 321, 324];

% a)
% h0: data jsou z Weibullova rozdělení
% ha: data nejsou

% Kolmogorov-Smirnovův test
% Přesný test Kolmogorov-Smirnov
alpha = 0.05; % Hladina významnosti

[h, p, ksstat] = kstest(t)

% h == 1
% pvalue == 5.7231e-42
% hypotézu h0 zamítáme

% b)
% Odhad parametrů Weibullova rozdělení
[parametry, interval_spolehlivosti] = wblfit(t);

% Výsledky
tvar = parametry(1);
skala = parametry(2);

% Odhadnuté parametry Weibullova rozdělení:
% Tvar (k): 214.2253
% Škála (lambda): 2.0661

% Intervalové odhady parametru Weibullova rozdělení:
% Interval spolehlivosti pro tvar (k): [185.0472, 1.6130]
% Interval spolehlivosti pro škálu (lambda): [248.0042, 2.6465]

% c)
% Test normality dat
alpha = 0.05; % Hladina významnosti

[h, p, stat] = lillietest(t, alpha, 'norm')
% h == 0
% p == 0.1269
% data jsou z normálního rozdělení, H0 přijímáme