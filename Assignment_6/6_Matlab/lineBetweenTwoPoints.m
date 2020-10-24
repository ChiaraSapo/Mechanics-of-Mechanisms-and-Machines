function lineBetweenTwoPoints(A, B, color)
% Plots the line between two given points
% input: A, B: given points at the end of the line i want to plot
%        color: desired color for the plot

x1= [A(1) B(1)];
y1= [A(2) B(2)];
plot(x1, y1, color);
axis([-80 200 -80 140]);

xlabel('x (mm)');
ylabel('y (mm)');

hold on;
end