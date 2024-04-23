function newD = AssignToD(indexes,Cx,D)
% Assign all values in 4th order elasticity tensor D we know from a value
% Cx in 2nd order elascticity tensor C. When i=j or k=l this is inefficient
% since there are repeats, but here I emphasize simplicity of code over
% computational efficiency
    i = indexes(1);
    j = indexes(2);
    k = indexes(3);
    l = indexes(4);

    newD = D;
    newD(i,j,k,l) = Cx;
    newD(j,i,k,l) = Cx;
    newD(i,j,l,k) = Cx;
    newD(j,i,l,k) = Cx;
    newD(k,l,i,j) = Cx;
    newD(k,l,j,i) = Cx;
    newD(l,k,i,j) = Cx;
    newD(l,k,j,i) = Cx;
end