function r = Mod(i,b)
    % Not normal modulo operator since we want Mod(i,i)=i instead of 0
    r = mod(i,b);
    if r==0
        r = b;
    end
end