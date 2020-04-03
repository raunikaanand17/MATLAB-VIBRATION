clc 
clear all
disp('***********RAUNIKA ANAND***********')
disp('***********17BME0220***********')
disp('***********PROBLEM 5***********')
disp('Question 5, SPRING DAMPER SYSTEM')
syms x t x(t)
Dx(t)=diff(x,t)
D2x(t)=diff(x,t,2)
disp('PARAMETERS')
m=3
c=10
k1=15
k2=25
disp('INITIAL CONDITIONS')
disp('Initial displacement')
cond1=x(0)==0.05
disp('Initial velocity')
cond2= Dx(0)==0.8
cond=[cond1 cond2]
ODE=(m*diff(x,t,2))+(c*diff(x,t,1))+(k1*x)==(k2*x)
disp('SOLUTION')
ySol(t)=dsolve(ODE,cond)
disp('SIMPLIFIED SOLUTION')
sol2=simplify(ySol)
fplot(ySol,t)