L = 10E-3;
C=22E-6;
R1=22;
R2=0.4;

K=R1/R2;

R2C=R2*C;

s = L/R1+R2*C;
LC = L*C;

numerator = [K*R2C,K];
deno = [LC,s,1];

G= tf(numerator,deno);
g = bodeplot(G);

%% Q2
% R=100;
% L=400E-6;
% C=1E-6;
% LC= L*C;
% LR=L/R;
% RC = R*C;
w1 = 2*pi*20;
w2 = 2*pi*150;
w3 = 2*pi*4500;
w4 = 2*pi*140E3;
w5 = 2*pi*1.5E6;
s = tf('s');
A = (7.079*(1+s/w1)*(1-s/w4))/((1+s/w2)*(1+s/w3));

%A = (100*500)/(500+100+100*500*0.1E-6*s)
R=100;
C=1E-6;
L = 400E-6
%A = (R*L*C*s^2+R+s*L)/(R*s*C+1)
%A = s*L+(R/(1+s*R*C))
opts1=bodeoptions('cstprefs');
opts1.XLim={[10,10E5]};
a=bodeplot(A,opts1);
setoptions(a,'FreqUnits','Hz');

