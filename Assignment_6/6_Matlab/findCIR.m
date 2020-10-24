function findCIR(P1,P2,VP1,VP2,var)
% Calculates and plots the IRC given two points
% output: none
% input: P1,P2 ends of the link of which we study the IRC
%        VP1,VP2 veclocities of the previous points
%        var: changes color of plot

%% Compute the lines 
    VP1_perp=[VP1(2),-VP1(1)];
    VP2_perp=[VP2(2),-VP2(1)];
    [mP1,qP1]=findLineParams(P1,VP1_perp);
    [mP2,qP2]=findLineParams(P2,VP2_perp);

    %% Calculate IRC
    syms xC yC
    lineP1perp = yC==mP2*xC+qP2;
    lineP2perp = yC==mP1*xC+qP1;
    sol = vpasolve([lineP2perp, lineP1perp], [xC, yC]);

    IRC = vpa(double([sol.xC,sol.yC]));

    %% Plot 
    if var==1
    % Plot lines
%     x = -100:1:200;
%     plot(x,mP2*x+qP2,'g:'); % line perp to vel P1
%     plot(x,mP1*x+qP1,'g:'); % line perp to vel P2
    % Plot IRC 1
    scatter(IRC(1), IRC(2), 'g*');
    end
    
    if var==2
    % Plot lines
%     x = -100:1:200;
%     plot(x,mP2*x+qP2,'m:'); % line perp to vel P1
%     plot(x,mP1*x+qP1,'m:'); % line perp to vel P2
    % Plot IRC 2
    scatter(IRC(1), IRC(2), 'm*');
    end
    
end