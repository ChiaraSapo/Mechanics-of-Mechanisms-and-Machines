function Exercise2()
% Function that plots the consecutive configurations of a planar 
% quadrilateral mechanism.
% It calls functions for the computation of the fixed centrode and moving
% centrode and plots the two scattered curves.
% It considers the short link as the fixed one

% cancel previous plots
hold off;

for alfa= 0:0.1:2*pi
    
    a = 4; % First digit of Matricola 
    b = 1/(0.1+(0.012*9));% n = 9;

    %Calculating relations between the angles
    x = sqrt((a^2)+(b^2) -(2*a*b*(cos(alfa)))); %Cosine theorem: x^2=a^2+b^2+2abcos(alpha)
    theta = asin((a*sin(alfa))/x);%Sine theorem: sin(alfa)/x = sin(theta)/a
    beta = (pi-2*theta-alfa);%Sum of internal angles of a triangle

    %Design of various points of the mechanism
    P1 = [0 0];
    P2 = [a 0];
    P3 = [b*cos(alfa) b*sin(alfa)];
    P4 = [a-b*cos(beta) b*sin(beta)];

    %Plots
    color='y';
    p1=plot([P1(1) P2(1)], [P1(2) P2(2)], color);
    axis([-6 10 -6 9]);
    title('Exercise 2');
    hold on;

    p2=plot([P1(1) P3(1)], [P1(2) P3(2)], color);
    p3=plot([P2(1) P4(1)], [P2(2) P4(2)], color);
    p4=plot([P3(1) P4(1)], [P3(2) P4(2)], color);

    %Fixed Centrode
    [x_fix,y_fix]=fixedCentrode(P1,P2,P3,P4);
    p5=scatter(x_fix,y_fix,'Filled','b');
    getframe;
    
    %Computing angle for moving centrode
    alfaFixed=pi/2;
    x = sqrt((a^2)+(b^2) -(2*a*b*(cos(alfaFixed)))); 
    thetaFixed = asin((a*sin(alfaFixed))/x);
    betaFixed = (pi-2*thetaFixed-alfaFixed);

    %Computing points for the moving centrode
    P1 = [0 b]; % P3
    P2 = [a-b*cos(betaFixed) b*sin(betaFixed)]; % P4
    P3 = [b*cos(-pi/2-beta)+a-b*cos(betaFixed) b*sin(-pi/2-beta)+b*sin(betaFixed)];
    P4 = [b*cos(-pi/2-beta) b*sin(-pi/2-beta)+b];

    %Moving centrode
    [x_mov,y_mov]=movingCentrode(P1,P2,P3,P4);
    p6=scatter(x_mov,y_mov,'Filled','g');
    getframe;

end

% The legend is set after the for cycle
h = [p1(1);p2(1);p3(1);p4(1);p5(1);p6(1)];
legend(h,'Side1','Side2','Side3','Side4','Fixed centrode','Moving centrode');

end


