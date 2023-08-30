% zadani 210426, str. 55
clear all
clc

%pr10
% Počet chyb na jedné straně textu má střední hodnotu 3 a rozptyl 4. 
% Jaká je pravděpodobnost, že na 400 stranách bude méně než 1000 chyb. 

% 1)
% E(X)=3, D(X)=4
% 2)
% chci součet, nebo průměr ?
% -> součet -> chci na 400 stranách -> sčítám chyby za stránky
% 3)
% parametry normálního rozdělení
% 3 chyby za stránku * 400 stránek = 1200 = u
% N(u = 1200, G^2 = 1600)
% 4)
% zjištění pravděpodobnosti < 1000 chyb
% chci plochu gaussovky -> cdf
% -> 
%    |        -----
%    |      -......| -
%    |    -........|  -
%    |   /...cdf...|    \
%    |  /..........|     \
% x -|--...........|----------
%      chci tohle 400

% norcdf(1000,1200,sqrt(1600));
