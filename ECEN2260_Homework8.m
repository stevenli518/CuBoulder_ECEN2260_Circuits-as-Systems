%Q1
R1 = 100;
R2 = 10;
L = 25E-6;
C1=6.8E-6;
C2 = 150E-6;
Q= 5.215;
s = tf('s');
A2 = 1/(1/(s*L)+(s*C2)/(1+s*R2*C2)+s*C1+1/R1);
A1= s*L+(1/((s*C2)/(1+s*R2*C2)+s*C1+1/R1));
A3= 1/((s*C2)/(1+s*R2*C2)+s*C1+1/R1);
A = A2/(s*L);
B = 1/ (1+(s/(Q*76.696E3)+(s/76.693E3)^2));
%A = (s*C2)/(1+s*R2*C2);
A= 1/(s*C1);
opts1=bodeoptions('cstprefs');
opts1.XLim={[10,10E5]};
%opts1.YLim={[20, -80]};
a=bodeplot(A,opts1);
% figure;
% bodeplot(B,opts1);
setoptions(a,'FreqUnits','Hz');


%%q2
R1 = 1E3;
R2 = 10E3;
R3=1E3;
%R4=1E3;
C1 = 1/(2*pi*R1*20);
C2=1/(2*pi*R2*500);
C3=1/(2*pi*R3*20E3);



w1 = 2*pi*20;
w2 = 2*pi*500;
w3 = 2*pi*5E3;
w4 = 2*pi*20E3;
 Z2 = ((R2)/(1+s*R2*C2))+((R3)/(1+s*R3*C3));
 Z1 = (R1+1/(s*C1));
% Z1 = (s*R1*C1+1)/(s*C1);
% Z2 = (R3)/(1+s*R3*C3);
% Z3 = (R2)/(1+s*R2*C2);
% Z4 = (R4)/(1+s*R4*C4);

A= -(Z2)/(Z1);
% A = 10*(1+s/w3)/((1+w1/s)*(1+s/w2)*(1+s/w4));
%B = (10*(s/w1)*(1+s/w3))/((1+s/w1)*(1+s/w2)*(1+s/w4))
A=(1+s/w2)/((1+s/w1)*(s/w1));
B = (w1)*(1+s/w2)/((1+s/w1)*s);
opts1=bodeoptions('cstprefs');
 opts1.XLim={[1,10E5]};
 a=bodeplot(A,opts1);
 figure;
 b =bodeplot(B,opts1);
% 
% setoptions(a,'FreqUnits','Hz');
% 
% ;