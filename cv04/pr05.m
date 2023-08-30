clear all
clc

%Př.5
%pravděpodobnostní funkce binomického rozdělení
%orel padne přesně 2x při 5ti hodech
p=binopdf(2,5,0.5)

%orel na minci padne alespoň 4x z 5ti hodů
%1- -> otočená logika ... řikám, kdy padne 0-1-2-3x
p=1-binocdf(3,5,0.5)

%Př.5a
%pravděpodobnost výhry ve sportce při vsazení 1000x, že vyhraju právě 2x
%šance ve sportce na pokus je 1/13983816
p=binopdf(2,1000,1/13983816)

%Př.5b
%a)právě 3 kvalitní
p=binopdf(3,5,0.8)
%b) alespoň 3 kvalitní
p=1-binocdf(2.5,5,0.8) % 2.5 nikdy nenastane -> pro jistotu, aby tam i 2 byly <0,2>
