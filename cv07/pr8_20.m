clear all
clc

% Testy Hypotéz, zadani 210426, str.49, 8.2.3
% pr20

% Dvouvýběrový test – test shody dvou středních hodnot
% [H,P,CI,STATS] =ttest2(X,Y,ALPHA,TAIL,VARTYPE)
% VARTYPE – %equal , ‘unequal’ – rozptyly jsou (nejsou) shodné, 
% test rozptylu předchází testu shody středních hodnot

% Denní přírůstky váhy selat byly při krmení směsí 
% A: 62, 54, 55, 60, 53, 58 dkg. U směsi B: 52, 56, 50, 49, 51 dkg. 
% Je mezi krmnými směsmi na hladině významnosti 5 % rozdíl?

A=[62, 54, 55, 60, 53, 58];
B=[52, 56, 50, 49, 51];

% netestuji rozptyl, ale střední hodnotu ... denní přírůstky

% Hypotézy
% Ho: mi(A) = mi(B)
% Ha: mi(A) != mi(B)


% Test shody rozptylů
% rozptyly jsou shodné

% Test hypotéz
[h,p,ci,stat] = ttest2(A,B,0.05,'both')

% h -> 1 ... Ho zamítáme... přikláníme se k alternativní Ha
% p -> 0.0217

% Výsledek: Hypotézu Ho zamítáme na hladině významnosti 5%.