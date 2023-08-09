R1 = 1000;
R2 = 10000;
C1 = 0.47E-6;
C2 = 3.3E-9;


R2C1 = R2*C1;
R1C1 = R1*C1;
R2C2 = R2*C2;

S2 = R1C1*R2C2;
S1 = R1C1+R2C2;
C = 1;

numerator = [R2C1,0];
deno = [S2,S1,C];

H = tf(numerator,deno);
opts1=bodeoptions('cstprefs');
%opts1.YLim={[-60 50]};
opts1.XLim={[1,10E5]};
h=bodeplot(H,opts1)
%setoptions(h,'FreqUnits','Hz');



