%3B
f =1000
w0=2*pi*f;

w = 2*pi*f;
n=1;
Vmax = 5;
H = 1/(1+((1i*n*w)/w0)+((1i*n*w)/w0)^2);
magnH1 = abs(H)
angle1 = -atan(n/(1-n^2))*180/pi

n=5 ;
H = 1/(1+((1i*n*w)/w0)+((1i*n*w)/w0)^2);
magnH5 = abs(H);
angle5= -atan(n/(1-n^2))*180/pi
t= 0:1E-6:1/f;
Vout1 = 1.128*Vmax*magnH1*cos(w.*t-90+angle1);

Vout5 = 0.34*Vmax*magnH5*cos(5.*w.*t-90+angle5);
V = Vout1+Vout5;
plot(t,Vout1,'b')

hold on
plot (t,Vout5,'r')

hold on
plot (t,V,'k')
legend('Fundamental','5th Harmonics','Vout');

xlabel('Frequency(Hz)');ylabel('Vout');
title('Fundamental + 5th Harmonics');