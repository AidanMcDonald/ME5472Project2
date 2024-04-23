function [Cm] = RotStiffness(Ce, K)
Cm = K*Ce*K';
end