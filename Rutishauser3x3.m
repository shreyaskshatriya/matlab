%Rurishausher Method 3x3
clc
clear all
A=[2 3 1;1 2 3;3 1 2]
Itr=3;
for i=1:Itr
    u11=A(1,1)
    u12=A(1,2)
    u13=A(1,3)
    l21=A(2,1)/u11
    u22=A(2,2)-(l21*u12)
    u23=A(2,3)-(l21*u13)
    l31=A(3,1)/u11
    l32=(A(3,2)-(l31*u12))/u22
    u33=A(3,3)-(l31*u13)-(l32*u23)
    L1=[1 0 0;l21 1 0;l31 l32 1];
    U1=[u11 u12 u13;0 u22 u23;0 0 u33];
    A=U1*L1
end