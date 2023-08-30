% zadani 210426, str. 53
clear all
clc

% pr4
% Náhodná veličina A má E(X)=5 a D(X)=4, náhodná veličina B má E(X)=3 a 
% D(X)=6, náhodná veličina C má E(X)=2 a D(X)=8. (Jsou nezávislé.) 
% Vypočtěte střední hodnotu a rozptyl výsledné náhodné veličiny X, 
% která je dána vzorcem X=A+B+C a Y=A+B-C.

% E - střední hodntoa
% D - rozptyl

% X=A+B+C == [E(X)=10, D(X)=18]
% X=A+B-C == [E(X)=6, D(X)=18]

%pr6
% Náhodná veličina A má E(X)=5 a D(X)=4, náhodná veličina 
% B má E(X)=0 a D(X)=16. Vypočtěte střední hodnotu a rozptyl výsledné 
% náhodné veličiny X, která je dána vzorcem X=A+3*B.

% A: E(x)=5, D(X)=4
% B: E(X)=0, D(X)=16

% ... E(X) = 5-3*0
% ... D(x) = 4+(3^2)*16

% == [E(X)=5, D(X)=148]