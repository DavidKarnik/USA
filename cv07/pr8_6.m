clear all
clc

% Testy Hypotéz, zadani 210426, str.44, 8.1.2
% pr6

% Při kontrole životnosti 50 výrobků bylo z dat zjištěno,
% střední doba poruchy je 27400 hodin
% směrodatná odchylka 5400 hodin
% Určete na hladině významnosti 5 %, zda lze přijmout fakt výrobce, 
% že střední doba do poruchy je rovna 30 000 hodin

% [H,P,CI,STATS] = ztest(X,střední hodnota,směrodatná odchylka,alpha,tail)	
% rozptyl je předem definován – extrémně vzácný případ

% Hypotézy
% H0: mi = 30000 h
% Ha: mi != 30000 h

pocet_vyrobku = 50;
stredni_hodnota = 27400;
mi = 30000; % testovaná hodnota "mí"
smer_odchylka = 5400;

% Testová statistika
% vzorec 8.3.2
T = (stredni_hodnota-mi) / smer_odchylka * sqrt(pocet_vyrobku);
% T = -3.4

% Normální rozdělení -> noncdf()
% Studentovo rozdělení -> tcdf() ... platí zde
p_value = 2 * tcdf(T,49) % => 0.0013
% 49 -> o jeden vzorek snižuji

% -----------|-----------------|---------
% 2.5% ... Ha    Ho 95%          2.5% ... Ha

% T < tinv(0.025,49) ... pro 2.5% ... => -2.00

% Výsledek: Hypotézu zamítáme
