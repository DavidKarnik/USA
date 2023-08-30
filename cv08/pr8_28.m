clear all
clc

% 8.3, Vícevýběrové testy

% Mohonásobné porovnávání
% Pr.:28 Mějme naměřená data z 5 skupin (každá o 100 prvcích), která jsou 
% uložena v souboru P0828.mat. Ověřte předpoklady a zjistěte, zda střední
% hodnota je u všech výběrů shodná. Pokud ne, porovnejte skupiny mezi sebou.

% (co lze očekávat: data pravděpodobně z normálního rozdělení, 
% shodné rozptyly, rozdílné střední hodnoty)

% Hypotézy
% H0: střední hodnoty skupin se rovnají ==
% Ha: alespoň jedna dvojice se nerozná !=

x=importdata('P0828.mat');
group(1:100)=1;
group(101:200)=2;
group(201:300)=3;
group(301:400)=4;
group(401:500)=5;
group=group'; % svislý vektor

%Ověření Bartlettovým testem
[p,stat]=vartestn(x,group,'on','classical')
% ... předpokládáne že rozptyly jsou shodné
% 'on' -> chci krabicový graf vykreslit

%Ověření shody středních hodnot anovou
[pvalue,anovatab,stat]=anova1(x,group)
% stat ... statistika mi pomůže pro vzájemné porovnávání

% 0.05 je hraniční
% pvalue je 0.0118

% Výsledek:
% Hypotézu H0 příjimáme na hladině významnosti 5%
[comparison,means] = multcompare(stat) % porovnání stat, středních hodnot