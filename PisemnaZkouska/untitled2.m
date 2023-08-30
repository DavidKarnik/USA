clear all
clc
% USA, 22.6.2023 Zkouška

% pr4

a = [0.45,0.51,0.54,0.56,0.62,0.67,0.71,0.74];
b = [0.48,0.49,0.54,0.57,0.62,0.65,0.67,0.71,0.78,0.82];
c = [0.56,0.62,0.65,0.67,0.72,0.78,0.82,0.84,0.87,0.91];
d = [0.56,0.58,0.64,0.67,0.71,0.83,0.85,0.89];
e = [0.47,0.51,0.54,0.56,0.58,0.62,0.67,0.71,0.75,0.78];
f = [0.56,0.57,0.61,0.64,0.67,0.69,0.76,0.82,0.85];

data = [a, b, c, d, e, f]; % Kombinace všech vektorů
group = [ones(size(a)), 2*ones(size(b)), 3*ones(size(c)), 4*ones(size(d)),5*ones(size(e)),6*ones(size(f))]; % Skupinové přiřazení

% H0: shodné střed, hodnoty na 1% hlad. význ.
% Ha: neshodné
% mean(a)
% mean(b)
% mean(c)
% mean(d)
% mean(e)
% mean(f)
%[p,h] = signtest()

% Analýza (ANOVA)
[p, tbl, stats] = anova1(data, group, 'off')

% Výsledky
alpha = 0.01; % Hladina významnosti
critical_value = tbl{2, 5}; % Kritická hodnota pro zamítnutí nulové hypotézy
F_statistic = tbl{2, 4}; % F-statistika

% Testování hypotézy
if F_statistic > critical_value
    disp('Nulová hypotéza se zamítá. Střední hodnoty nejsou shodné.');
else
    disp('Nulová hypotéza se nezamítá. Střední hodnoty jsou shodné.');
end

% H0: f > a na hladině 5%

% T-test
alpha = 0.05; % Hladina významnosti
[h, p, ci, stats] = ttest2(f, a, alpha)

% h == 0
% pvalue == 0.054739
% H0 přijímáme, čas po 8 hodinách je vyšší než po 0 hodinách na hladině
% význ. 5%.