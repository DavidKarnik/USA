clear all
clc

% Zkouškový příklad č.4

% V roce 2022 se v podniku sbírali informace o poruchách jedné komponenty.
% Na 24 strojích, které byly po dobu 52 týdnů stále jednu směnu v provozu,
% bylo zjištěno 81 poruch.

% V roce 2024 se plánuje rozšíření výroby. Přičemž bude zakoupeno dalších
% 26 strojů (celkem bude 50 strojů), které budou v provozu: 40 strojů po
% dvě směny, zbývajících 10 strojů pro tři směny. V 52 týdenním roce se
% však počítá se čtyřmi jednotýdenními přestávkami.

% a) Určete pravděpodobnost, že v roce 2024 bude na všech strojích méně než
% 300 poruch.
% b) Jaká je střední hodnota počtu poruch v roce 2024.
% c) Představte si situaci, že náhradní díly na rok 2024 musíte mít k 1.
% lednu. Další již v průběhu roku nepůjde zakoupit. Kolik máte mít na
% skladě náhradních dílů, abyste je s pravděpodobností 99,73% měli na
% skladě.

% Řešení:

% a)
% odhad lambda poruchovosti dle 2022
% poruchy / stroje * směny * týdny
lambda = 81 / (24 * 1 * 52); % == 0.0649
% pro 2024 jen 48 týdnů, 40 strojů 2 směny a 10 strojů 3 směny
t = (40 * 2 * 48 + 10 * 3 * 48);
% střední hodnota poruch pro 2024
str_hodnota = lambda * t; % == 342,7
% Pravděpodobnost dle Poissonova rozdělení, cdf protože znám pořet poruch
% (vetšinou platí pomůcka cdf, když 1.parametr > 1 )
% Pravděpodobnost, že bude < než 300, takže 299.5 a méně, protože poruchy
% jsou pouze v celých číslech, takže 299.5 nikdy nenastane, až 299
Pa = poisscdf(299.5,str_hodnota); % == 0,0088

% b)
% == str_hodnota == 342,7

% c)
% Kolik bude poruch dle Poissonova rozdělení pro přesnost 99.73%, inv
% protože neznám počet poruch 
% (vetšinou platí pomůcka inv, když 0 < 1.parametr < 1 )
Pb = poissinv(0.9973,str_hodnota); % == 395