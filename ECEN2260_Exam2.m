w2 = 2*pi*4900;
w1 = 2*pi*230;
Q = 3.16;
H0=100;
s = tf('s');
H = ((H0)/(1+(s/(3.16*w2))+(s/w2)^2))*(1/(1+w1/s));
opts1=bodeoptions('cstprefs');
opts1.XLim={[10,10E5]};
h=bodeplot(H,opts1);
setoptions(h,'FreqUnits','Hz');

%% Q2
C1 = 0.33E-6;
C2 = 0.22E-6;
R1=1E3;
R2=10E3;
R3=100;
Z2 = ((R2)/(1+s*R2*C2));
Z1= ((R1)/(1+s*R1*C1))+R3;
G =- Z2/Z1;
g=bodeplot(G,opts1);
setoptions(g,'FreqUnits','Hz');

R=680;
C=5E-6;
L = 500E-3;
A = (R*L*s)/(L*C*s^2+R*C*s+1)
g=bodeplot(A,opts1);
%setoptions(g,'FreqUnits','Hz');