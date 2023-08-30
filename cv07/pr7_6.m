% kapitova 8, testy hypotéz
% je to rovno nějaké hodnotě ? (mohla by být střední hodnota = 20 ?)

% kapitola 7
% urči interval, ve kterém se s pravděpodobností 0,95 bude
% nacházet střední hodnota

% ----|-------------|----
% 2.5%     95%       2.5%

% pr6
% V prodejně si udělali průzkum, kolik zákazníků přijde do obchodu během
% jednoho dne. Byly zjištěny následující data:

% x=[541,574,585,596,612,618,632,641,654,671,681,692,711,713,718,719,754,796,812,815,835,858];

% Ověřte, že data jsou z normálního rozdělení. Zjistěte 99% 
% interval spolehlivosti odhadu střední hodnoty

x=[541,574,585,596,612,618,632,641,654,671,681,692,711,713,718,719,754,796,812,815,835,858];
normplot(x)

mu=mean(x) % střední hodnota
smerodch=std(x)

[h,p,ci]=ttest(x,500,0.01,'both')
% h - výsledek hypotézy (použití u testování hypotéz) - pokud je 2.
% parametr v intervalu spolehlivost h=0, jinak h=1
% p-value - pravděpodobnost (použití u testování hypotéz) - závisí na
% velikosti 2. parametru
% ci - interval spolehlivosti

% ttest( data , stř.hodnota(nezáleží na ní) , hladnina významnosti ,'both (oboustranný)')
% hladnina významnosti = jednotkový doplněk => 100% - 99% = 1% = 0.01

% výsledek => s 99% pravděpodobností se střední hodnota bude nacházet v
% intervalu spolehlivosti