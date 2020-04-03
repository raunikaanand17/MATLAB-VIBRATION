clc 
clear all
disp('***********RAUNIKA ANAND***********')
disp('***********17BME0220***********')
disp('***********PROBLEM 5***********')
disp('Question 3, SPRING DAMPER SYSTEM')
syms x t x(t)
Dx(t)=diff(x,t)
D2x(t)=diff(x,t,2)
disp('PARAMETERS')
m=3
c=5
k=6
disp('INITIAL CONDITIONS')
disp('Initial displacement')
cond1=x(0)==0.04
disp('Initial velocity')
cond2= Dx(0)==0.10
cond=[cond1 cond2]
disp('NATURAL FREQUENCY')
omega=sqrt(k/m)  
disp('DAMPING RATIO')
zeta=c/(2*m*omega)
ODE=(m*diff(x,t,2))+(c*diff(x,t,1))==(k*x)
disp('SOLUTION')
ySol(t)=dsolve(ODE,cond)
%x=solve(x2)
%x1=int(x2,x)+v0
%x=int(x1,x)+x0
disp('SIMPLIFIED SOLUTION')
sol2=simplify(ySol)
fplot(ySol,t)