function [x,y]=movingCentrode(A,B,C,D)

x1= [A(1) C(1)];
y1= [A(2) C(2)];

x2= [D(1) B(1)];
y2= [D(2) B(2)];

% Fit linear polynomial: we create two lines defined by the given segments
p1 = polyfit(x1,y1,1); 
p2 = polyfit(x2,y2,1); 

% Calculate intersection between the lines
x_intersect = fzero(@(x) polyval(p1-p2,x),3);
y_intersect = polyval(p1,x_intersect);

x=x_intersect;
y=y_intersect;


end

