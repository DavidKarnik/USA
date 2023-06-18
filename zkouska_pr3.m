clear all
clc

% Zkouškový příklad č.3

% Při testování tělocvičných vlastností dětí ve věku 6 až 9 let jsme
% obdrželi následující výsledky. (Výsledky testů by měli být porovnatelné
% napříč věkovými skupinami.)

vek6 = [38,41,52,46,54,51,45,41,42,44,46,47,48,46,45,41,42,43,44,41,52,51,54,57,52,49,46,45];
vek7 = [42,45,47,49,51,42,43,43,38,39,42,45,52,57,58];
vek8 = [51,54,28,52,54,48,45,46,46,42,43,45,47,48,51,52,54,21,25,46,45];
vek9 = [57,54,52,45,41,48,44,45,39,42,46,41,43,42,45,47,54,52];

% a) Určete ve všech vektorech odlehlé hodnoty. Zdůvodněte, proč jsou tyto
% hodnoty odlehlé.
% b) Otestujte na hladině významnosti 5%, zda vstupní vektory mají stejnou
% střední hodnotu nebo medián (dle zvoleného testu). Rozhodněte jaký test
% použít na základě otestované normality dat a shodnoti rozptylů.

% Řešení:

% a) například IQR
% interquartile range ... interqurtilní rozsah ... rozsah mezi 1. a 3.
% quartilem
% https://www.youtube.com/watch?v=0TulXwT_3ck&ab_channel=WrathofMath

% iqr(vek6,"all"); % iqr(vek6,2) ... matice
% iqr(vek7,"all");
% iqr(vek8,"all");
% iqr(vek9,"all");

% odlehlé hodnoty pomocí Turkeyho metody (true/false)
% nejjednodušší
% odlehle_vek6 = isoutlier(vek6)
% odlehle_vek7 = isoutlier(vek7)
% odlehle_vek8 = isoutlier(vek8)
% odlehle_vek9 = isoutlier(vek9)

% pro vek6
Q1 = prctile(vek6, 25); % 1. kvartil
Q3 = prctile(vek6, 75); % 3. kvartil
IQR = Q3 - Q1; % Interkvartilové rozpětí
horni_meze = Q3 + 1.5 * IQR; % Horní mez pro odlehlé hodnoty
dolni_meze = Q1 - 1.5 * IQR; % Dolní mez pro odlehlé hodnoty

odlehle_hodnoty_vek6 = vek6(vek6 < dolni_meze | vek6 > horni_meze); % zde 
% žádné odlehlé hodnoty

% pro vek7
Q1 = prctile(vek7, 25); % 1. kvartil
Q3 = prctile(vek7, 75); % 3. kvartil
IQR = Q3 - Q1; % Interkvartilové rozpětí
horni_meze = Q3 + 1.5 * IQR; % Horní mez pro odlehlé hodnoty
dolni_meze = Q1 - 1.5 * IQR; % Dolní mez pro odlehlé hodnoty

odlehle_hodnoty_vek7 = vek7(vek7 < dolni_meze | vek7 > horni_meze);

% pro vek8
Q1 = prctile(vek8, 25); % 1. kvartil
Q3 = prctile(vek8, 75); % 3. kvartil
IQR = Q3 - Q1; % Interkvartilové rozpětí
horni_meze = Q3 + 1.5 * IQR; % Horní mez pro odlehlé hodnoty
dolni_meze = Q1 - 1.5 * IQR; % Dolní mez pro odlehlé hodnoty

odlehle_hodnoty_vek8 = vek8(vek8 < dolni_meze | vek8 > horni_meze);

% pro vek9
Q1 = prctile(vek9, 25); % 1. kvartil
Q3 = prctile(vek9, 75); % 3. kvartil
IQR = Q3 - Q1; % Interkvartilové rozpětí
horni_meze = Q3 + 1.5 * IQR; % Horní mez pro odlehlé hodnoty
dolni_meze = Q1 - 1.5 * IQR; % Dolní mez pro odlehlé hodnoty

odlehle_hodnoty_vek9 = vek9(vek9 < dolni_meze | vek9 > horni_meze);


% b) například annova1

% otestování normality dat a shodnosti rozptylů...
[h, p] = lillietest(vek6); % h == 0
[h, p] = lillietest(vek7); % h == 0
[h, p] = lillietest(vek8); % h == ~0
[h, p] = lillietest(vek9); % h == 0
% H0: data jsou z normálního rozdělení
% h = 1 ... hypotézu H0 zamítáme
% h = 0 -> hypotézu H0 příjimáme ... data jsou z normálního rozdělení

% H0: vektory mají stenou střední hodnotu
% Ha: vektory nemají stejnou střední hodnotu

data = [vek6, vek7, vek8, vek9]; % Kombinace všech vektorů
group = [ones(size(vek6)), 2*ones(size(vek7)), 3*ones(size(vek8)), 4*ones(size(vek9))]; % Skupinové přiřazení
% 1,1,..1,2,2,...3,...4 ... skupina

%stats = grpstats(data , group) % ... střední hodnoty vektorů

% [~, ~, stats] = anova1(data, group, 'off');
p = anova1(data, group, 'on')

p_value = p;

if p_value < 0.5
    disp('Vektory mají různé střední hodnoty.');
else
    disp('Vektory mají stejnou střední hodnotu.');
end


