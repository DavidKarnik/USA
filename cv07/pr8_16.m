clear all
clc

% mean_x=mean(x); % Stredni hodnota.
% std_x=std(x); % Standardni odchylka.
% var_x=var(x); % Rozptyl.
% min_x=min(x); % Minimum.
% max_x=max(x); % Maximum.
% mode_x=mode(x); % Nejcasteji se vyskytujici hodnota.

% Testy Hypotéz, zadani 210426, str.47, 8.2.1
% Dvouvýběrové testy
% pr16

% Balicí zařízení je seřízeno na začátku ranní směny a následně 
% kontrolováno u odpolední směny. Byly zjištěny následující 
% hodnoty hmotnosti výrobků:

rano=[98.5, 98.6, 98.7, 98.7, 98.7, 98.8, 98.9, 99.2, 99.3, 99.3];
odpoledne=[98.1,98.2, 98.3, 98.4, 98.6, 98.7, 98.8, 98.9, 99.0, 99.0];

% Otestujte na hladině významnosti 5 %, zda je shodné seřízení stroje, 
% tj. zda rozptyl hmotnosti výrobku je shodný.  

% Máme 2 výběry -> 2 měření (ráno,odpoledne)

% Testujeme rozptyl
% Hypotézy
% Ho: rozptyl(ráno) = rozptyl(odpoledne)
% Ha: rozptyl(ráno) != rozptyl(odpoledne)

% rozptyl -> vartest, 2 výběry -> vartest2

[h,p,ci,stat] = vartest2(rano,odpoledne,0.05,'both')
% 0.05 -> 5% hladina významnosti
% 'both' -> protože Ho je rovnost (=) rozptylů

% h -> 0 ... přijímáme Ho
% p -> 0.7187
% ci -> 0.1940 3.1443

% Výsledek: Hypotézu Ho přijímáme, p_value je 0.7187 (říká do jaké míry já
% přijímám/zamítám Ho).

% p_value je podstatně větší než 0.05 (5%), takže přijímáme (kdyby byla
% p_value u hranice 0.05, tak nevíme jednoznačně)
