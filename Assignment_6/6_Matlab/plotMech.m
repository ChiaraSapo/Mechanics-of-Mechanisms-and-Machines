function plotMech(O,A,B,C,D,E,F,G,J,K,L,M,R,S)
% Plots the mechnism

%% Plot submechanism 1 
% plot links
figure(1);
lineBetweenTwoPoints(F,E,'b');
hold on;
lineBetweenTwoPoints(E,D,'b');
lineBetweenTwoPoints(A,D,'b');
lineBetweenTwoPoints(A,C,'b');
lineBetweenTwoPoints(C,E,'b');
lineBetweenTwoPoints(B,C,'b');

% plot point names
text(O(1),O(2),'O');
text(A(1),A(2),'A');
text(B(1),B(2),'B');
text(C(1),C(2),'C');
text(D(1),D(2),'D');
text(E(1),E(2),'E');
text(F(1),F(2),'F');

%plot rotational joints
x1=[A(1),B(1),C(1),D(1),E(1),F(1)];
y1=[A(2),B(2),C(2),D(2),E(2),F(2)];
hold on;
scatter(x1,y1,'b');

%% Plot submechanism 2
% plot links
lineBetweenTwoPoints(J,G,'r');
hold on;
lineBetweenTwoPoints(J,K,'r');
lineBetweenTwoPoints(K,F,'r');
lineBetweenTwoPoints(F,L,'r');
lineBetweenTwoPoints(R,S,'r');
lineBetweenTwoPoints(S,G,'r');
lineBetweenTwoPoints(M,G,'r');

% plot point names
text(G(1),G(2),'G');
text(J(1),J(2),'J');
text(K(1),K(2),'K');
text(L(1),L(2),'L');
text(M(1),M(2),'M');
text(R(1),R(2),'R');
text(S(1),S(2),'S');

% plot rotational joints 
x2=[G(1),J(1),K(1),R(1),S(1)];
y2=[G(2),J(2),K(2),R(2),S(2)];
scatter(x2,y2,'r');
end