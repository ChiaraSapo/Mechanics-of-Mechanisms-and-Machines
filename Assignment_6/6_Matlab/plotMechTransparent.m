function plotMechTransparent(O,A,B,C,D,E,F,G,J,K,L,M,R,S)
% Same as plotMech but with lighter plots, so that the IRCs are clearer

%% Plot submechanism 1 
% plot links
figure(1);
lineBetweenTwoPoints(F,E,'b:');
hold on;
lineBetweenTwoPoints(E,D,'b:');
lineBetweenTwoPoints(A,D,'b:');
lineBetweenTwoPoints(A,C,'b:');
lineBetweenTwoPoints(C,E,'b:');
lineBetweenTwoPoints(B,C,'b:');

%% Plot submechanism 2
% plot links.
lineBetweenTwoPoints(J,G,'r:');
hold on;
lineBetweenTwoPoints(J,K,'r:');
lineBetweenTwoPoints(K,F,'r:');
lineBetweenTwoPoints(F,L,'r:');
lineBetweenTwoPoints(R,S,'r:');
lineBetweenTwoPoints(S,G,'r:');
lineBetweenTwoPoints(M,G,'r:');

end