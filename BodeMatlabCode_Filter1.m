clc; clear;
Rf = 130;
Rg = 318;
Rb = 318;
C = 1e-6;
H = tf([1 0],[Rg*C Rg/Rb Rg/((Rf^2)*C)]);
opts = bodeoptions('cstprefs');
opts.FreqUnits = 'Hz';
bode(H, opts)
title('System 1 Bode Plot');