%Lanczos Method to tri-diagonal
clc
clear all
A=[1 3 4;3 1 2;4 2 1]
r0=[1;1;1];
r0nrm=sqrt((r0(1,1)^2)+(r0(2,1)^2)+(r0(3,1)^2))
q1=r0/r0nrm
d1=transpose(q1)*A*q1

r1=(A*q1)-(q1*d1)
r1nrm=sqrt((r1(1,1)^2)+(r1(2,1)^2)+(r1(3,1)^2))
q2=r1/r1nrm
d2=transpose(q2)*A*q2

u1=r1nrm
r2=(A*q2)-(q1*u1)-(q2*d2)
r2nrm=sqrt((r2(1,1)^2)+(r2(2,1)^2)+(r2(3,1)^2))
u2=r2nrm
q3=r2/r2nrm
d3=transpose(q3)*A*q3

T=[d1 u1 0;u1 d2 u2;0 u2 d3]