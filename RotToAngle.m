function [phi_1, Phi, phi_2] = RotToAngle(G)
    Phi = acosd(G(3,3));

    if sin(Phi)~=0
        phi_1 = atan2d(G(3,1), -G(3,2));
        phi_2 = atan2d(G(1,3), G(2,3));
    elseif Phi==0
        % We can only know the sum of phi_1 and phi_2. Arbitrarily choose
        % phi_1 = phi_1+phi_2 and phi_2=0
        phi_1 = atan2d(-G(2,1), G(1,1));
        phi_2 = 0;
    elseif Phi==180
        % We can only know the difference of phi_1 and phi_2. Arbitrarily 
        % choose phi_1 = phi_1-phi_2 and phi_2=0
        phi_1 = atan2d(G(2,1), G(1,1));
        phi_2 = 0;
    end
    if phi_1<0
        phi_1=phi_1+360;
    end
    if phi_2<0
        phi_2=phi_2+360;
    end
end