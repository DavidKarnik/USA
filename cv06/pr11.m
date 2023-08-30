% zadani 210426, str. 55
clear all
clc

% pr11
% Stokrát hodíme šestistěnnou kostkou. Jaká je pravděpodobnost, 
% že součet hodů bude mezi 320 a 380.

% 6ti stěnná kostka ...
% E(X) = (1+2+3+4+5+6)/6 = 3.5
% D(X) = suma kvadrátu odchylek od střední hodnoty
% jdu od 1,2,3 - 6 a odečítám stř. hodnotu -> to na ^2 -> to krát
% pravděpodobnost toho jednoho jevu (strany kostky)
% -> (1 - 3.5)^2 * 1/6 + (2 - 3.5)...
% => 2.5^2 * 1/6 + 1.5^2 * 1/6 + 0.5^2 * 1/6 + ... == 35/12
% D(X) = 35/12

% bude to součet

% N(u = 350, G^2 = 3500/12) ... G^2 = 100 * D(X)

% přesně mezi 320 a 380 včetně ->
% norcdf(380.5, 350, sqrt(3500/12)) - norcdf(319.5, 350, sqrt(3500/12));
% .5 -> kvůli <> ... 0.5 na kostce nepadne, takže poslední je celé 380>

