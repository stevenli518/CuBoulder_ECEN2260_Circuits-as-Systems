%% Q1
s = tf('s');
G1 = (10)/(1+(5E-4)*s+1E-7*s^2)
G2 = 4/(1+1.6E-6*s);
H = 2*(1+8E-5*s);
T = G1*G2*H;
opts1=bodeoptions('cstprefs');
opts1.XLim={[10,10E6]};
t=bodeplot(T,opts1);
setoptions(t,'FreqUnits','Hz');

%% Q2
Rth = 100;
R1=100;
R2 = 1000;
L1 = 5E-3;
C1=0.1E-6;

T= 1/(1/R1+1/(s*L1)+1/R1+(s*C1/(1+s*R2*C1)))
opts1=bodeoptions('cstprefs');
opts1.XLim={[10,10E6]};
t=bodeplot(T,opts1);
setoptions(t,'FreqUnits','Hz');