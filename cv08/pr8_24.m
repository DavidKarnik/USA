clear all
clc

% Testování relativních četností, 8.2.4
% zadání 161004, str.37, cv.24

% 2 výběry... město a vesnice
% ve městě dotázáno 1240, ano řeklo 325
% na vesnici dotázáno 741, ano řeklo 287

% město, ano řeklo 26.2%
% vesnice, anío řeklo 38.7%

% otestujete na hladině významnosti 5% shodu názorů ve městě a na vesnici

% hypotézy
% H0: Pměsto == Pvesnice
% Ha: !=

% dle vzorce ze zadání (stránka se vzorci), T
% T = (Pm - Pv) / (sqrt( (Pm*(1-Pm)) / Nm + (Pv*(1-Pv)) / Nv ))

T = (0.262 - 0.387) / (sqrt( (0.262*(1-0.262)) / 1240 + (0.387*(1-0.387)) / 741 ))

% T = -5.7289
% Výsledek
% Hypotézu H0 zamítáme na hladině významnosti 5% (relativní četnosti nejsou
% stejné)