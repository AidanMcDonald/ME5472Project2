function [K] = Transform6x6(Om)
for i=1:3
    for j=1:3
    K1(i,j) = Om(i,j)^2;
    K2(i,j) = Om(i,Mod(j+1,3))*Om(i,Mod(j+2,3));
    K3(i,j) = Om(Mod(i+1,3),j)*Om(Mod(i+2,3),j);
    K4(i,j) = Om(Mod(i+1,3),Mod(j+1,3))*Om(Mod(i+2,3),Mod(j+2,3))+...
              Om(Mod(i+1,3),Mod(j+2,3))*Om(Mod(i+2,3),Mod(j+1,3));
    end
end
K = [K1 2*K2;
     K3   K4];
end