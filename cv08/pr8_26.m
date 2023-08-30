clear all
clc

% 8.3, Vícevýběrové testy

% ANOVA
% Pr.:26
%Mějme naměřená data z 5 skupin (každá o 100 prvcích), která jsou uložena 
% v souboru P0826.mat. Ověřte předpoklady a zjistěte, zda střední hodnota 
% je u všech výběrů shodná.

%otevře data uložená v souboru
x=importdata('P0826.mat');

group(1:100)=1;
group(101:200)=2;
group(201:300)=3;
group(301:400)=4;
group(401:500)=5;
group=group';

hold on
normplot(x(1:100));
normplot(x(101:200));
normplot(x(201:300));
normplot(x(301:400));
normplot(x(401:500));
hold off

%Ověření Bartlettovým testem
[p,stat]=vartestn(x,group,'on','classical')

%Ověření shody středních hodnot anovou
[h,anovatab,stat]=anova1(x,group)

% Hypotézu H0 příjimáme na hladině významnosti 5%, střední hodnoty jsou
% shodné