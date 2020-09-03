%Rurishausher Method 2x2
clc
clear all
A=[4 3;1 2]
Itr=4;
for i=1:Itr
    u11=A(1,1)
    u12=A(1,2)
    l21=A(2,1)/u11
    u22=A(2,2)-(l21*u12)
    L1=[1 0;l21 1];
    U1=[u11 u12;0 u22];
    A=U1*L1
end