clc
clear all
disp('***********RAUNIKA ANAND***********')
disp('***********17BME0220***********')
disp('***********PROBLEM 1***********')
disp('SYSTEM PARAMETERS')
m=15;
k=1100;
F=50;
v=0.6;
disp('NATURAL FREQUENCY')
wn=sqrt(k/m)
disp('DAMPING COEFFICIENT')
C=F/v
disp('CRITICAL DAMPING')
Cc=2*m*wn
disp('DAMPING FACTOR')
zeta=C/Cc
N=linspace(0,350,350);
w=2*pi*N/60;
disp('FREQUENCY RATIO')
r=w/wn
x=eye(length(N));
M=x/sqrt(((1-r.^2).^2)+((r.*2*zeta).^2))
plot(r,M);
max_magnification=max(M)
