function[m,q]=findLineParams(P,D)
% Computes the values m,q of a line with given direction and point
% output: parameters m, q of the line
% input: point and direction of line
% (y=m*x+q)
    m=D(2)/D(1);
    q=P(2)-m*P(1);
end