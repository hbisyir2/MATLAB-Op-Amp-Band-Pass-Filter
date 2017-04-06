clc; clear;
Rf = 65;
Rg = 159;
Rb = 159;
C = 1e-6;
H = tf([1 0],[Rg*C Rg/Rb Rg/((Rf^2)*C)]);
opts = bodeoptions('cstprefs');
opts.FreqUnits = 'Hz';
bode(H, opts)
title('System 2 Bode Plot');