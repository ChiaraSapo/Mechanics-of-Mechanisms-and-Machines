function [vOUT] = rotateV(vIN, angleIN)
% output: vector vIN rotated of angle angleIN
% input: vIN: vector to rotate
%        angleIN: angle of rotation
vIN=[vIN(1);vIN(2)];
R = [cos(angleIN) -sin(angleIN); sin(angleIN) cos(angleIN)];
vOUT = (R*vIN)';
end

