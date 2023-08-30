clear all
clc
% USA, 22.6.2023 Zkouška

% pr1

otec = [71,72,74,76,77,78,71,72,73,75,77,64,49,52,63,65,68,71,72,75,84,81,79,76,73,75,79,82];
syn = [72,74,77,69,78,82,84,78,79,79,77,68,59,72,81,68,69,73,76,78,86,87,88,91,83,87,88,93];

% H0: došlo u syna k prodloužení životu o 2 a více let, střední hodnoty
% Ha: nedošlo

% Rozdíl životnosti synů a otců
rozdil = syn - otec;

prumer_rozdilu = mean(rozdil); % 6.14
smerodatna_odchylka_rozdilu = std(rozdil); % 5.9

alpha = 0.05; % Hladina významnosti

% Párový t-test
[h, p, ci, stats] = ttest(syn, otec, alpha)

% h == 1
% pvalue == 0.0010
% Průměr rozdílu: 6.14
% 95% interval spolehlivosti: [3.84, 8.44]

% přijímáme hypotézu h0 dle intervalu, ano došlo k prodloužení