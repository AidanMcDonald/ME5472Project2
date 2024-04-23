function [Cm] = AnglesToCm(angles,C)
Om = AngleToRot(angles(1), angles(2), angles(3));
K = Transform6x6(Om);
Cm = RotStiffness(C, K);
end