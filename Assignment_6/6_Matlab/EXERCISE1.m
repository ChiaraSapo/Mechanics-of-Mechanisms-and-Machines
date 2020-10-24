function EXERCISE1()
clc, clear
hold off;
d=4;
r=4;

[O,A,B,C,D,E,F,G,J,K,L,M,R,S] = findPoints(d,r);
plotMech(O,A,B,C,D,E,F,G,J,K,L,M,R,S);

fprintf('my values are d = %d and r = %d. \nWith the assigned values of d and r the following points are obtained:',d,r);

fprintf('A = [ %.2d, %.2d] \n', A);
fprintf('B = [ %.2d, %.2d] \n', B);
fprintf('C = [ %.2d, %.2d] \n', C);
fprintf('D = [ %.2d, %.2d] \n', D);
fprintf('E = [ %.2d, %.2d] \n', E);
fprintf('F = [ %.2d, %.2d] \n', F);
fprintf('O = [ %.2d, %.2d] \n', O);

fprintf('G = [ %.2d, %.2d] \n', G);
fprintf('J = [ %.2d, %.2d] \n', J);
fprintf('K = [ %.2d, %.2d] \n', K);
fprintf('L = [ %.2d, %.2d] \n', L);
fprintf('M = [ %.2d, %.2d] \n', M);
fprintf('R = [ %.2d, %.2d] \n', R);
fprintf('S = [ %.2d, %.2d] \n', S);

end