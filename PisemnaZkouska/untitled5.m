clear all
clc
% USA, 22.6.2023 Zkouška

% pr2

% Hodnoty karet
karty = [1 1 1 1 2 2 2 2 7 7 7 7 8 8 8 8 9 9 9 9 10 10 10 10 11 11 11 11];
N = length(karty);

% a)
% kombinace 2 karet
dvojice = nchoosek(karty, 2);
soucty_dvojic = sum(dvojice, 2); 
A = sum(soucty_dvojic == 21 | soucty_dvojic == 22) / length(soucty_dvojic)
% a == 0.0582

% b)
kombinace_treti_karta = [karty 1 1  2 2  7 7  8 8  9 9  10 10 11 11];
trojice = nchoosek(kombinace_treti_karta, 3);
soucty_trojic = sum(trojice, 2);
B = sum(soucty_trojic == 21) / length(soucty_trojic)
% b == 0.0660