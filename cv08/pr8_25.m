clear all
clc

% 8.3, Vícevýběrové testy
% Test shody rozptylů ... vartestn()
% ... střední hodnota ... anova1 (data jsou z normálního roz.)
% ...         kruskal wallis test (nevyžaduje normalitu dat)

% Test shody rozptylů

% Pr.25: Výrobní stroj se seřídí začátkem směny. Kontrola výrobků probíhá 
% vždy po jedné hodině a chceme zjistit, zda nedochází k většímu rozptylu 
% určitého rozměru. Otestujte na hladině významnosti 5 %, zda rozptyly 
% dat jsou shodné. Použijte Bartlettův i Leveneův test.

% Bartlett vyžaduje normalitu dat
% Leven nevyžaduje
% vždy je ale příkaz vartestn()
% krabicový graf

% Data
x1=[18,19,19,19,20,21,21,22,22,23,23,24,24,24,25,25,25,26,26,26,27,28];
x2=[17,18,18,19,19,20,21,21,22,22,22,23,23,23,23,24,24,25,25,26,26,27,28,29] ;
x3=[16,17,18,18,18,19,20,20,20,20,21,21,21,22,23,23,23,24,25,26,27,27,28,28,29,31];
x4=[14,15,16,16,17,18,19,20,22,22,22,23,24,25,25,27,27,27,28,28,28,31,31,33,34];

% všechna data zřetězit do 1 vektoru, potom transponovat -> []'
% vartestn(data,skupina) ... skupina = spojené vektory [1,1...,1,2,...2,3..4]

% Hypotézy
% H0: rozptyly se rovnají ... G1^2 = G2^2 = G3^2 = G4^2
% Ha: některé se liší

data = [x1, x2, x3, x4]';

x1Skupina(1:22) = 1;
x2Skupina(1:24) = 2;
x3Skupina(1:26) = 3;
x4Skupina(1:25) = 4;
%skupina[1,1,1,1,1,...,1,2,....,2,2,3,...,3,4,4,...,4]
skupina = [x1Skupina, x2Skupina, x3Skupina, x4Skupina];
% data a skupina musejí být stejně dlouhé vektory

% hladina významnosti 5% je defaultní v příkazu... nemusí se psát jako
% argument příkazu vartestn()
[pval,stats] = vartestn(data,skupina,'on', 'classical')

% pval = 0.004
% Výsledek:
% Hypotézu H0 zamítáme na hladině významnosti 5%