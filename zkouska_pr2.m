clear all
clc

% Zkouškový příklad č.2

% a) Máte balíček mariášových karet (obsahuje 4x7, 4x8, 4x9, 4x10,
% 4x spodek, 4x filek, 4x král, 4x eso). Karty jsou zamíchané. Určete
% pravděpodobnost, že při vytažení první karty budete mít 7, druhá karta
% bude 8, třetí 9, čtvrtá 10, pátá spodek, šestá filek, sedmá král a osmá
% eso. Karty nevracíme.

% b) Jak se změní pravděpodobnost, jestliže na vstupu budete mít dva
% balíčky karet.
% c) Jak se změní pravděpodobnost, jestliže na vstupu budete mít nekonečno
% balíčků karet.

% Řešení:
% a)
% první karta: 4/32
% druhá karta: 4/31 ...
a = 4/32 * 4/31 * 4/30 * 4/29 * 4/28 * 4/27 * 4/26 * 4/25
% a pravděpodobnost = 1,5453 * 10^-7

% b)
% první karta: 8/64
% druhá karta: 8/63 ...
b = 8/64 * 8/63 * 8/62 * 8/61 * 8/60 * 8/59 * 8/58 * 8/57
% b pravděpodobnost = 9,4009 * 10^-8

% c)
% Pravděpodobnost výběru první karty (sedma) je N * 4 / N * 32 
% (N je počet balíčků).

% Po vytažení první karty zůstane N * 32 karet, z nichž N * 4 jsou osmy 
% (N je počet balíčků).
% Pravděpodobnost výběru druhé karty (osma) je tedy (N * 4) / (N * 32 - 1).

% Obdobně pro další karty:
% Pravděpodobnost výběru třetí karty (devítka) je (N * 4) / (N * 32 - 2).
% Pravděpodobnost výběru čtvrté karty (desítka) je (N * 4) / (N * 32 - 3).
% Pravděpodobnost výběru páté karty (spodek) je (N * 4) / (N * 32 - 4).
% Pravděpodobnost výběru šesté karty (filek) je (N * 4) / (N * 32 - 5).
% Pravděpodobnost výběru sedmé karty (král) je (N * 4) / (N * 32 - 6).
% Pravděpodobnost výběru osmé karty (eso) je (N * 4) / (N * 32 - 7).

% Celková pravděpodobnost výběru daných karet v pořadí pro nekonečný počet 
% balíčků je součinem jednotlivých pravděpodobností:

% P(výběr) = [(N * 4) / (N * 32)] * 
% [(N * 4) / (N * 32 - 1)] * 
% [(N * 4) / (N * 32 - 2)] * 
% [(N * 4) / (N * 32 - 3)] * 
% [(N * 4) / (N * 32 - 4)] * 
% [(N * 4) / (N * 32 - 5)] * 
% [(N * 4) / (N * 32 - 6)] * 
% [(N * 4) / (N * 32 - 7)]

% Jak N roste k nekonečnu, jmenovatel v každém členu výrazu bude převažovat 
% nad čitateli, a tím se celková pravděpodobnost bude blížit nule. Tedy 
% pravděpodobnost výběru všech daných karet v pořadí při nekonečném počtu 
% balíčků se blíží nule.

% --> Pravděpodobnost se velmi pomalu blíží k nule s rostoucím počtem
% balíčku karet.