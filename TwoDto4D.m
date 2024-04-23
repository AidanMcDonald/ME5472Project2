function D = TwoDto4D(C)

D = zeros(3,3,3,3);
for m=1:6
    for n=1:6
        if m<=n
            indexes = [indexMap(m),indexMap(n)];
            D = AssignToD(indexes,C(m,n),D);
        end
    end
end

end