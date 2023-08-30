clear all
clc

%Testuje se životnost 100 výrobků. Doba zkoušky trvá 10000 hodin. 
% Celkem bylo zaznamenáno 79 poruch. Výrobky po poruše nejsou nahrazeny novými. 
% V čase 10000 hodin je zkouška ukončena (21 výrobků). 
%Určete parametry Weibullova rozdělení

vstup=importdata('P0517b.xlsx');
%výsledky ve formě struktury, vstupy jsou uloženy jako data a dále v listu1

% generovat čísla .. rnd
% stř.hodnota, rozptyl .. stat
% titovat data .. tit

%wblfit(x)
%wblstat(x)

%načteme 79 vstupních dat
x=vstup.List1(:,1)';

%zkouska ukončena poruchou, tedy cens=0
%každé dato je jenom jednou
cens(1:79)=0;
freq(1:79)=1;

%přidání dat s ukončením zkoušky časem
x(80)=10000;
cens(80)=1; % = [0,0,0,...,0,1]
freq(80)=21; % = [1,1,...,1,21] ... suma == 100

ab=wblfit(x,0.05,cens,freq)

%výpočet
EX=expfit(x,0.05,cens,freq)

