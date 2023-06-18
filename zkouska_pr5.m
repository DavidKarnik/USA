clear all
clc

% Zkouškový příklad č.5

% Máte naměřená data ve vektorech x a y.

x=[1,2,3,4,5,6,7,8,9,10];
y=[6,22,70,240,810,2700,8900,29000,98000,330000];

% a) Proložte data funkcí: y = b1 * exp^(b2*x)
% b) Otestujte, zda parametr b2 se na hladině významnosti 5% může rovnat 1
% c) Proč není vhodné proložení funkcí: y = b1 * exp^(b2*x+b3)

% Řešení:
%plot(x,y,'x');

% a)
% == y = 1.7636
% Definice modelové funkce
model = @(b, x) b(1) * exp(b(2) * x);

% b)
% Provádění nelineární regrese pomocí funkce fitnlm
mdl = fitnlm(x, y, model, [1; 1]);

% Extrahování odhadů parametrů
b1 = mdl.Coefficients.Estimate(1);
b2 = mdl.Coefficients.Estimate(2);

% Výpis odhadů parametrů
fprintf('b1 = %.4f\n', b1);
fprintf('b2 = %.4f\n', b2);

% Test hypotézy b2 = 1 na hladině významnosti 5%
alpha = 0.05;
t_stat = (b2 - 1) / mdl.Coefficients.SE(2);
p_value = 2 * (1 - tcdf(abs(t_stat), mdl.DFE));

% Výpis výsledků testu hypotézy
fprintf('t-statistika = %.4f\n', t_stat);
fprintf('p-hodnota = %.4f\n', p_value);

% Porovnání p-hodnoty s hladinou významnosti
if p_value < alpha
    disp('Na hladině významnosti 5% zamítáme hypotézu b2 = 1.');
else
    disp('Na hladině významnosti 5% nemáme dostatek důkazů pro zamítnutí hypotézy b2 = 1.');
end

% Vykreslení původních dat a proložené křivky
figure;
plot(x, y, 'bo', 'DisplayName', 'Data');
hold on;
x_fit = linspace(min(x), max(x), 100);
y_fit = model([b1, b2], x_fit);
plot(x_fit, y_fit, 'r-', 'DisplayName', 'Proložená křivka');
xlabel('x');
ylabel('y');
legend('Location', 'best');
grid on;

% c)
% Proč není vhodné proložení funkcí: y = b1 * exp^(b2*x+b3)
% y = b1 * exp^(b2*x+b3) => b1 * e^(b2*x) * x^b3 -> b3 nemá x
% není vhodné
