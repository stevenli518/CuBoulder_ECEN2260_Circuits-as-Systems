s = tf('s');
R1 = 1000;
R2 = 10000;
C=16E-9;
w1 = 1/(R1*C);
w2 =1/(R2*C);
w0 =5*2*pi;
G0 = 100000;
Z2 = R2;
Z1 = R1+(1/(s*C));
w3 = 1/((R1+R2)*C);
%  H= -(Z2)/(Z1);
% num = (1+(s/w1))*G0;
% deno = (1+(s/(w0)))*(1+(s/w1)+(s/w2));
% H = num/deno;
%  num = (1+(s/w1))*G0;
%  deno = (1+(s/(w0)))*(1+(s/w3));
%  H= num/deno;
% H = (s/w2)/(1+(s/w1))
  H=(s/w2)
opts1=bodeoptions('cstprefs');
opts1.XLim={[10,10E6]};
h=bodeplot(H,opts1);
setoptions(h,'FreqUnits','Hz');