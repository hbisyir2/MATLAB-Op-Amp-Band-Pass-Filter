clc; clear;
%Rf1 = 130;
%Rg1 = 6018000;
%Rb1 = 6018000;
%Rf2 = 65;
%Rg2 = 4059000;
%Rb2 = 4059000;
C = 1e-6;
%Make all resistor values the same
%Moves center frequencies closer together
%Rf1 = 318;
%Rg1 = 318;
%Rb1 = 318;
%Rf2 = 199;
%Rg2 = 159;
%Rb2 = 159;
%Dramatically increase 1 Rg, decreases max gain
%Rf1 = 318;
%Rg1 = 9180;
%Rb1 = 318;
%Rf2 = 159;
%Rg2 = 159;
%Rb2 = 159;
%Decrease bandwidth, make peak a sharper spike
%More visible when you separate center frequency farther
%(Increase Rf1)
Rf1 = 130;
Rg1 = 6018000;
Rb1 = 6018000;
Rf2 = 65;
Rg2 = 4059000;
Rb2 = 4059000;
H1 = tf([1 0],[Rg1*C Rg1/Rb1 Rg1/((Rf1^2)*C)]);
H2 = tf([1 0],[Rg2*C Rg2/Rb2 Rg2/((Rf2^2)*C)]);
HAdd = H1 + H2;
HSub = H1 - H2;
opts = bodeoptions('cstprefs');
opts.FreqUnits = 'Hz';
subplot(2,1,1);
bode(HAdd, opts)
%hold on;
%bode(H1, opts)
%hold on;
%bode(H2, opts)
title('System 1 + System 2 Bode Plot');
%figure;
subplot(2,1,2);
bode(HSub, opts)
%hold on;
%bode(H1, opts)
%hold on;
%bode(H2, opts)
title('System 1 - System 2 Bode Plot');