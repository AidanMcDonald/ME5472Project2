function [C] = CubicSymmetryStiffness(C11, C44, C12)
C = [C11 C12 C12   0   0   0;
     C12 C11 C12   0   0   0;
     C12 C12 C11   0   0   0;
       0   0   0 C44   0   0;
       0   0   0   0 C44   0;
       0   0   0   0   0 C44];
end