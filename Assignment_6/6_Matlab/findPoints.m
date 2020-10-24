function [O,A,B,C,D,E,F,G,J,K,L,M,R,S] = findPoints(d,r)
% Computes all the points of the mechanism
% output: all points of the mechanism
% input: values of d,r

%% Data from exercise
OA=d+20;
OB=d+20;
AD=11;
BC=3;
DE=23;
EF=17;
CE=55;
GJ=65;
JK=48;
KF=65;
FL=133;
GM=124;
RS=r+95;
SG=16;

%% Subplot 1
O=[0,0];
A=[0,24+d];
B=[0,-24-d];
C=[3,-24-d];
D=[-11,24+d];

%% E:
[xE,yE]= circcirc(C(1),C(2),CE,D(1),D(2),DE);
xE= max(xE);
yE= max(yE);
E=[xE yE];

%% F:
angDE= atan2(E(2)-OA,E(1)+AD);
xF=E(1)+(EF*cos(angDE));
yF=E(2)+(EF*sin(angDE));
F=[xF yF];

%% Subplot2
G=[44.6,-22.5];
R=[-40.9,38];

%% S:
[xS,ys]= circcirc(G(1),G(2),SG,R(1),R(2),RS);
xS= max(xS);
yS= max(ys);
S=[xS yS];

%% J:
J = G + rotateV(S-G, 1/2*pi)/norm(S-G)*GJ;

%% M:
M = G + rotateV(S-G, -1/2*pi)/norm(S-G)*GM;

%% K:
[xK,yK]= circcirc(F(1),F(2),KF,J(1),J(2),JK);
xK= min(xK);
yK= max(yK);
K=[xK,yK];

%% L:
theta=(17*pi/18);
L = F+ rotateV(K-F, theta)/norm(K-F) * FL;

end