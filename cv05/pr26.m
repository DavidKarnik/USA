clear all
clc

% Výsledky měření jsou zatíženy jen normálně rozdělenou náhodnou chybou se 
% směrodatnou odchylkou 3 mm.

% a)	Jaká je pravděpodobnost, že při měření bude chyba v intervalu 
% (-2 mm, 5 mm).

% b)	Máte 3 výrobky, jaká je pravděpodobnost, že alespoň u jednoho 
% výrobku bude chyba mimo tento interval. 

%ad a
%normální rozdělení s parametry N(0,3)
pravd_a=normcdf(5,0,3)-normcdf(-2,0,3)

%ad b
%binomické rozdělení
%pravděpodobnost všechny v intervalu
% binopdf(počet požadovaných úspěchů, počet pokusů, pravděpodobnost pokusu)
pravd_b=binopdf(3,3,pravd_a)

%alespoň jeden bude mít chybu mimo interval
pravd_b=1-pravd_b
% == binocdf(2,3,pravd_a) ... 0,1 až 2 včetně