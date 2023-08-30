clear all
clc

%Př.15a
% Krevní skupina A+ pravděpodobnost je 0.35
% Chci najít právě 3 dárce

% a) stačí vyšetřit právě 10 dárců
% tzn. právě 10. je 3. se skupinou A+
p=nbinpdf(7,3,0.35)
%(7neúspěchů,3úspěchy,šance na úspěch)

% b) více jak 9 dárců
p=1-nbincdf(6.5,3,0.35)
% 6.5 nidky nenasatene, ale je to pojistka aby včetně 6 <6,...

% c) alespoň 6 (včetně) a nejvýše 10 dárců (včetně)
p=nbincdf(7.5,3,0.35)-nbincdf(2.5,3,0.35)