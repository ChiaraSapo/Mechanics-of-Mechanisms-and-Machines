function EXERCISE2
clc, clear
hold off;

for r=3:0.1:4
    d=r;
    
    %% Find points
     [O,A,B,C,D,E,F,G,J,K,L,M,R,S]=findPoints(d,r);
    
    %% Find velocities
    [VD,VF,VK,VL]=findVelocities(d,r);
    
    %% Plot mechanism
    plotMechTransparent(O,A,B,C,D,E,F,G,J,K,L,M,R,S);
   
    %% Find CIR DF
    findCIR(D,F,VD,VF,1);
    
end

for r=4:0.1:5
    d=r;
    
    %% Find points
    [O,A,B,C,D,E,F,G,J,K,L,M,R,S]=findPoints(d,r);
    
    %% Find velocities
    [VD,VF,VK,VL]=findVelocities(d,r);
    
    %% Plot mechanism
    plotMechTransparent(O,A,B,C,D,E,F,G,J,K,L,M,R,S);
    
    %% Find CIR LK
    findCIR(L,K,VL,VK,2);
    
end

end