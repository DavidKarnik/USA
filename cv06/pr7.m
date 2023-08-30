% zadani 210426, str. 54
clear all
clc

% Předpoklad Centrální limitní věty (CLV), musí splňovat...
% má více jak 30 dat?
% konečnou střední hodnotu?
% pokusy navzájem nezávislé?

%pr7
% Máte vygenerováno 1000 náhodných čísel z rovnoměrného rozdělení <0,1>. 
% Určete pravděpodobnost, že PRŮMĚR všech vygenerovaných čísel bude 
% vyšší než 0.520.

% 1) stř. hodnota ... E(X)=(a+b)/2=0.5
% ... D(X)=((a+b)^2)/12=1/12
% 2) CLV platí, průměr
% 3) N(0.5,G^2=1/12000)
% 4) příkaz pro normální rozdělení pro toto
% ... 1-norcdf(0.52,0.5,sqrt(1/12000));