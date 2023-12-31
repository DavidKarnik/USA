clear all
clc

% Zkouškový příklad č.1

% Vygenerujte si 100 náhodných čísel. První má střední hodnotu 1 a rozptyl
% 1, druhé má střední hodnotu 2 a rozptyl 2, až sté má střední hondotu 100
% a rozptyl 100. Určete:

% a) Jaká je pravděpodobnost, že součet 100 vygenerovaných čísel bude nižší
% než 5000.
% b) Jak se změní pravděpodobnost, jestliže první má střední hodnotu 1 a
% směrodatnou odchylku 1, druhé má střední hodnotu 2 a směrodatnou odchylku
% 2, ..., až sté ...Jaká je pravděpodobnost, že součet bude nižší než 5000.

% Řešení:
rng('default'); % Nastaví generátor náhodných čísel na výchozí hodnotu

n = 100; % Počet čísel k vygenerování

means = 1:n; % Pole se středními hodnotami
rozptyly = 1:n; % Pole s rozptyly

cisla = zeros(1, n); % Inicializace pole pro vygenerovaná čísla
for i = 1:n
    cisla(i) = normrnd(means(i), sqrt(rozptyly(i))); % Generování čísel s danou střední hodnotou a rozptylem
end
%disp(cisla); % Výpis vygenerovaných čísel

sum_mean = sum(means); % Střední hodnota součtu % == 5050
sum_rozptyly = sum(rozptyly); % Suma rozptylů

probability_A = normcdf(5000, sum_mean, sqrt(sum_rozptyly)); % Pravděpodobnost, že součet je nižší než 5000

disp(probability_A); % Výpis pravděpodobnosti A == 24,1%

% b)
%sum_odchylky = suma i=1 až n : i^2
sum_odchylky = sum((1:100).^2); % == 338350

probability_B = normcdf(5000, sum_mean, sqrt(sum_odchylky)); % Pravděpodobnost, že součet je nižší než 5000

disp(probability_B); % Výpis pravděpodobnosti B == 46,6%