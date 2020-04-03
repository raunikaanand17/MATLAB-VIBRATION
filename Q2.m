clc
clear all
disp('***********RAUNIKA ANAND***********')
disp('***********17BME0220***********')
disp('***********PROBLEM 2***********')
syms t x;
disp('SYSTEM PARAMETERS')
wn=6
x0=0
v0=30
val=[0.05,0.1,0.2,0.3]
c=1
for i = val
    zeta=i;
    wd=wn*sqrt(1-(zeta)^2)
    A=sqrt((x0^2)+(((zeta*(wn*x0))+v0)/wd)^2)
    phi=atan((((zeta*(wn*x0))+v0)/(wd*x0)))
    x=A*exp(-zeta*(wn*t))*cos((wd*t)-phi)
    subplot(2,2,c)
    fplot(x)
    c=c+1;
end
