function G = AngleToRot(phi_1, Phi, phi_2)
    g_1 = [ cosd(phi_1) sind(phi_1) 0;
           -sind(phi_1) cosd(phi_1) 0;
           0            0           1];
    g_2 = [1  0        0;
           0  cosd(Phi) sind(Phi);
           0 -sind(Phi) cosd(Phi)];
    g_3 = [ cosd(phi_2) sind(phi_2) 0;
           -sind(phi_2) cosd(phi_2) 0;
           0            0           1];
    G = g_3*g_2*g_1;
end