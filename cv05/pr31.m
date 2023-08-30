clear all
clc

% Pravděpodobnost, že náhodná veličina nabude vyšší hodnoty 
% než 59.6 je 0.2119. Pravděpodobnost, že nabude hodnoty menší než 57.2 
% je 0.7258. Náhodná veličina je z normálního rozdělení. 
% Vypočtěte hodnoty parametrů. 

%P(X>59.6)=0.2119
%pravděpodobnost, že je MENŠÍ než 59.6 !!!
Pa=1-0.2119;
%vypočtu zskore pro dane pravděpodobnosti a z nich sestavím rovnice, 
%které potom vypočtu
za=norminv(Pa,0,1); % převod na normální rozdělení


%pravděpodobnost, že je menší než 57,2 je 0.7258
Pb=0.7258;
% Gaussovka s plochou 0.7258, střední hodnota v 0 a rozptyl 1
zb=norminv(Pb,0,1);

%Řeším soustavu rovnic:
%z=(x-my)/sigma pro neznámé mý a sigma. 
syms mu 
syms sigma positive
[mu,sigma]=solve((59.6-mu)/sigma==za, (57.2-mu)/sigma==zb)
% mu == 49.9867851954
% sigma == 12.0188314136