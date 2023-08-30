clear all
clc

% Máte normální rozdělení s parametry N(mu = 5, sigma^2=4).
% Vypočtěte následující hodnoty:

% přípona, dle toho, co znám (z jaké osy)
% F(x) = y, t = x
% F(x) znám, t neznám -> inv
% F(x) neznám, t znám -> cdf
% ... 0<cislo<1 ... inv nejspíš
% ... 1<cislo ... cdf

% a) 20% kvantil
vysledek_a=norminv(0.2,5,2)
% b) 50% kvantil
vysledek_b=norminv(0.5,5,2)
%symetrické kolem 0.5
% c) Ze znalosti výsledku z bodu a) zpaměti 80% kvantil
% vysledek_a + vysledek_a
vysledek_c=norminv(0.8,5,2)
% F(x=3.5)
vysledek_d=normcdf(3.5,5,2)
% F(x=8)
vysledek_e=normcdf(8,5,2)
% f) Zpaměti ze znalosti výsledku z bodu d) F(x=6.5)
vysledek_f=normcdf(6.5,5,2)