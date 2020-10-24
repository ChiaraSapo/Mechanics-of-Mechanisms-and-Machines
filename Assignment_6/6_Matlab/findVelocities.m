function [VD,VF,VK,VL]=findVelocities(d,r)
% Computes the desired velocities for ex2
% output: desired velocities
% input: values of d,r

hold all;

%% Data from exercise
DE=23;
EF=17;
CE=55;
JK=48;
KF=65;
FL=133;
RS=r+95;
SG=16;

%% Get the position
[O,A,B,C,D,E,F,G,J,K,L,M,R,S]=findPoints(d,r);

%% velocity point D
VD=[0,1]; %unitary: for the CIR I can use it

%% velocity point C
VC=[0,-1];

%% velocity point F
% To compute I first need W_E:
angED=(atan2d((E(2)-D(2)),(E(1)-D(1))))*pi/180;
angEC=(atan2d((E(2)-C(2)),(E(1)-C(1))))*pi/180;

syms W_DE W_CE
eqnx1 = W_DE*DE*sin(angED) == W_CE*CE*sin(angEC);
if (angED > 0)
eqny1 = W_DE*DE*cos(angED)+ VD(2) == W_CE*CE*cos(angEC)+ VC(2);
else   
eqny1 = -W_DE*DE*cos(angED) + VD(2) == -W_CE*CE*cos(angEC) + VC(2);
end
W_DE_temp = solve([eqnx1, eqny1], [W_DE,W_CE]);
W_DE = double(vpa(W_DE_temp.W_DE));

VF=[W_DE*(DE+EF)*sin(angED),-W_DE*(DE+EF)*cos(angED)+ VD(2)];

%% Velocity point J
angRS=(atan2d((S(2)-R(2)),(S(1)-R(1))))*pi/180;
angGS=(atan2d((S(2)-G(2)),(S(1)-G(1))))*pi/180;

syms W_RS W_GS
eqnx2 = +r*sin(angRS)+W_RS*(RS)*sin(angRS) == W_GS*SG*sin(angGS);
eqny2 = +r*cos(angRS)-W_RS*(RS)*cos(angRS) == -W_GS*SG*cos(angGS);

W_GS_temp = solve([eqnx2, eqny2], [W_RS, W_GS]);
W_GS = double(vpa(W_GS_temp.W_GS));

angGJ=(atan2d((J(2)-G(2)),(J(1)-G(1))))*pi/180;
VJ=[-W_GS*SG*sin(angGJ),W_GS*SG*cos(angGJ)];

%% Velocity point K
angKF=(atan2d((K(2)-F(2)),(K(1)-F(1))))*pi/180;
angKJ=(atan2d((K(2)-J(2)),(K(1)-J(1))))*pi/180;

syms W_FK W_JK
eqnx3 = VF(1)-sin(angKF)*W_FK*KF == VJ(1)-sin(angKJ)*W_JK*JK;
eqny3 = VF(2)+cos(angKF)*W_FK*KF == VJ(2)+cos(angKJ)*W_JK*JK;
W_JK_temp = solve([eqnx3, eqny3], [W_FK, W_JK]);
W_JK = double(vpa(W_JK_temp.W_JK));
W_FK = double(vpa(W_JK_temp.W_FK));

VK=[VJ(1)-sin(angKF)*W_JK*JK,VJ(2)+cos(angKF)*W_JK*JK];

%% Velocity point L                                                 
angLF=(atan2d((L(2)-F(2)),(L(1)-F(1))))*pi/180;
VL=[VF(1)-sin(angLF)*W_FK*FL,VF(2)+cos(angLF)*W_FK*FL];
   
end
